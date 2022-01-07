; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_bas-gigaset.c_gigaset_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_bas-gigaset.c_gigaset_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.cardstate = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.bas_cardstate* }
%struct.bas_cardstate = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BS_SUSPEND = common dso_local global i32 0, align 4
@DEBUG_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"already suspended\00", align 1
@BS_B1OPEN = common dso_local global i32 0, align 4
@BS_B2OPEN = common dso_local global i32 0, align 4
@BS_ATRDPEND = common dso_local global i32 0, align 4
@BS_ATWRPEND = common dso_local global i32 0, align 4
@BAS_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"wait_event_timeout() -> %d\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"cannot suspend:\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c" B channel 1 open\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c" B channel 2 open\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c" receiving AT reply\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c" sending AT command\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BS_ATOPEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"closing AT channel\00", align 1
@HD_CLOSE_ATCHANNEL = common dso_local global i32 0, align 4
@PM_EVENT_ON = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"suspend complete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i64)* @gigaset_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gigaset_suspend(%struct.usb_interface* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.cardstate*, align 8
  %7 = alloca %struct.bas_cardstate*, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i64 %1, i64* %9, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %11 = call %struct.cardstate* @usb_get_intfdata(%struct.usb_interface* %10)
  store %struct.cardstate* %11, %struct.cardstate** %6, align 8
  %12 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %13 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.bas_cardstate*, %struct.bas_cardstate** %14, align 8
  store %struct.bas_cardstate* %15, %struct.bas_cardstate** %7, align 8
  %16 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %17 = load i32, i32* @BS_SUSPEND, align 4
  %18 = call i32 @update_basstate(%struct.bas_cardstate* %16, i32 %17, i32 0)
  %19 = load i32, i32* @BS_SUSPEND, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @DEBUG_SUSPEND, align 4
  %24 = call i32 (i32, i8*, ...) @gig_dbg(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %190

25:                                               ; preds = %2
  %26 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %27 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %30 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BS_B1OPEN, align 4
  %33 = load i32, i32* @BS_B2OPEN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @BS_ATRDPEND, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @BS_ATWRPEND, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %31, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* @BAS_TIMEOUT, align 4
  %44 = load i32, i32* @HZ, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sdiv i32 %45, 10
  %47 = call i32 @wait_event_timeout(i32 %28, i32 %42, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @DEBUG_SUSPEND, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 (i32, i8*, ...) @gig_dbg(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %52 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @BS_B1OPEN, align 4
  %55 = load i32, i32* @BS_B2OPEN, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @BS_ATRDPEND, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @BS_ATWRPEND, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %53, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %121

63:                                               ; preds = %25
  %64 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %65 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_warn(i32 %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %69 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @BS_B1OPEN, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %63
  %75 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %76 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_warn(i32 %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %74, %63
  %80 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %81 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @BS_B2OPEN, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %88 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_warn(i32 %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %91

91:                                               ; preds = %86, %79
  %92 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %93 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @BS_ATRDPEND, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %100 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dev_warn(i32 %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %103

103:                                              ; preds = %98, %91
  %104 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %105 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @BS_ATWRPEND, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %112 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @dev_warn(i32 %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %115

115:                                              ; preds = %110, %103
  %116 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %117 = load i32, i32* @BS_SUSPEND, align 4
  %118 = call i32 @update_basstate(%struct.bas_cardstate* %116, i32 0, i32 %117)
  %119 = load i32, i32* @EBUSY, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %190

121:                                              ; preds = %25
  %122 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %123 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @BS_ATOPEN, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %158

128:                                              ; preds = %121
  %129 = load i32, i32* @DEBUG_SUSPEND, align 4
  %130 = call i32 (i32, i8*, ...) @gig_dbg(i32 %129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %131 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %132 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @HD_CLOSE_ATCHANNEL, align 4
  %135 = call i32 @req_submit(i32 %133, i32 %134, i32 0, i32 0)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %128
  %139 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %140 = load i32, i32* @BS_SUSPEND, align 4
  %141 = call i32 @update_basstate(%struct.bas_cardstate* %139, i32 0, i32 %140)
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %3, align 4
  br label %190

143:                                              ; preds = %128
  %144 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %145 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %148 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* @BAS_TIMEOUT, align 4
  %154 = load i32, i32* @HZ, align 4
  %155 = mul nsw i32 %153, %154
  %156 = sdiv i32 %155, 10
  %157 = call i32 @wait_event_timeout(i32 %146, i32 %152, i32 %156)
  br label %158

158:                                              ; preds = %143, %121
  %159 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %160 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @usb_kill_urb(i32 %161)
  %163 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %164 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @usb_kill_urb(i32 %165)
  %167 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %168 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %167, i32 0, i32 5
  %169 = call i32 @del_timer_sync(i32* %168)
  %170 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %171 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %170, i32 0, i32 4
  %172 = call i32 @del_timer_sync(i32* %171)
  %173 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %174 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %173, i32 0, i32 3
  %175 = call i32 @del_timer_sync(i32* %174)
  %176 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %177 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %176, i32 0, i32 2
  %178 = call i32 @del_timer_sync(i32* %177)
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @PM_EVENT_ON, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %158
  %184 = load %struct.bas_cardstate*, %struct.bas_cardstate** %7, align 8
  %185 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %184, i32 0, i32 1
  %186 = call i32 @cancel_work_sync(i32* %185)
  br label %187

187:                                              ; preds = %183, %158
  %188 = load i32, i32* @DEBUG_SUSPEND, align 4
  %189 = call i32 (i32, i8*, ...) @gig_dbg(i32 %188, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %187, %138, %115, %22
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local %struct.cardstate* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @update_basstate(%struct.bas_cardstate*, i32, i32) #1

declare dso_local i32 @gig_dbg(i32, i8*, ...) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @req_submit(i32, i32, i32, i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
