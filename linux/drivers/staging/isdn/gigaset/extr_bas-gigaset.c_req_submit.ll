; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_bas-gigaset.c_req_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_bas-gigaset.c_req_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.bas_cardstate* }
%struct.bas_cardstate = type { i32, i32, i32, i32, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i64, i64, i32, i32 }

@DEBUG_USBREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"-------> 0x%02x (%d)\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"submission of request 0x%02x failed: request 0x%02x still pending\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@OUT_VENDOR_REQ = common dso_local global i32 0, align 4
@write_ctrl_callback = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"could not submit request 0x%02x: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"setting timeout of %d/10 secs\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bc_state*, i32, i32, i32)* @req_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @req_submit(%struct.bc_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bas_cardstate*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.bc_state* %0, %struct.bc_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %14 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.bas_cardstate*, %struct.bas_cardstate** %17, align 8
  store %struct.bas_cardstate* %18, %struct.bas_cardstate** %10, align 8
  %19 = load i32, i32* @DEBUG_USBREQ, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (i32, i8*, i32, ...) @gig_dbg(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  %24 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %23, i32 0, i32 1
  %25 = load i64, i64* %12, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  %28 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %4
  %32 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  %33 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %32, i32 0, i32 1
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %37 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  %43 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %134

48:                                               ; preds = %4
  %49 = load i32, i32* @OUT_VENDOR_REQ, align 4
  %50 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  %51 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  %55 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @cpu_to_le16(i32 %57)
  %59 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  %60 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 8
  %62 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  %63 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  %66 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  %69 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  %72 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  %75 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @usb_sndctrlpipe(i32 %76, i32 0)
  %78 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  %79 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %78, i32 0, i32 5
  %80 = bitcast %struct.TYPE_5__* %79 to i8*
  %81 = load i32, i32* @write_ctrl_callback, align 4
  %82 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  %83 = call i32 @usb_fill_control_urb(i32 %70, i32 %73, i32 %77, i8* %80, i32* null, i32 0, i32 %81, %struct.bas_cardstate* %82)
  %84 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  %85 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %84, i32 0, i32 4
  store i64 0, i64* %85, align 8
  %86 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  %87 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @GFP_ATOMIC, align 4
  %90 = call i32 @usb_submit_urb(i32 %88, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %48
  %95 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %96 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @get_usb_rcmsg(i32 %101)
  %103 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %102)
  %104 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  %105 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %104, i32 0, i32 1
  %106 = load i64, i64* %12, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %5, align 4
  br label %134

109:                                              ; preds = %48
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  %112 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %9, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %109
  %116 = load i32, i32* @DEBUG_USBREQ, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 (i32, i8*, i32, ...) @gig_dbg(i32 %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  %119 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  %120 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %119, i32 0, i32 2
  %121 = load i64, i64* @jiffies, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @HZ, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sdiv i32 %124, 10
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %121, %126
  %128 = call i32 @mod_timer(i32* %120, i64 %127)
  br label %129

129:                                              ; preds = %115, %109
  %130 = load %struct.bas_cardstate*, %struct.bas_cardstate** %10, align 8
  %131 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %130, i32 0, i32 1
  %132 = load i64, i64* %12, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* %131, i64 %132)
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %129, %94, %31
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @gig_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_control_urb(i32, i32, i32, i8*, i32*, i32, i32, %struct.bas_cardstate*) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_usb_rcmsg(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
