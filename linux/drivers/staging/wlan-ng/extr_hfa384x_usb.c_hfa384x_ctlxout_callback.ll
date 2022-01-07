; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_ctlxout_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_ctlxout_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.hfa384x* }
%struct.hfa384x = type { i32, i32, %struct.TYPE_8__, i32, i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.hfa384x_usbctlx = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"urb->status=%d\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CTLX_REQ_COMPLETE = common dso_local global i32 0, align 4
@CTLX_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Illegal CTLX[%d] success state(%s, %d) in OUT URB\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@WORK_TX_HALT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%s tx pipe stalled: requesting reset\0A\00", align 1
@CTLX_REQ_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @hfa384x_ctlxout_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfa384x_ctlxout_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.hfa384x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfa384x_usbctlx*, align 8
  %8 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 1
  %11 = load %struct.hfa384x*, %struct.hfa384x** %10, align 8
  store %struct.hfa384x* %11, %struct.hfa384x** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.urb*, %struct.urb** %2, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ESHUTDOWN, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %32, label %22

22:                                               ; preds = %1
  %23 = load %struct.urb*, %struct.urb** %2, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %31 = icmp ne %struct.hfa384x* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %22, %1
  br label %189

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %61, %33
  %35 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %36 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %41 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = call i64 @list_empty(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %47 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  br label %189

51:                                               ; preds = %34
  %52 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %53 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %52, i32 0, i32 7
  %54 = call i32 @del_timer(i32* %53)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %58 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %63 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  br label %34

67:                                               ; preds = %56
  br label %71

68:                                               ; preds = %51
  %69 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %70 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %67
  %72 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %73 = call %struct.hfa384x_usbctlx* @get_active_ctlx(%struct.hfa384x* %72)
  store %struct.hfa384x_usbctlx* %73, %struct.hfa384x_usbctlx** %7, align 8
  %74 = load %struct.urb*, %struct.urb** %2, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %113

78:                                               ; preds = %71
  %79 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %7, align 8
  %80 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %93 [
    i32 129, label %82
    i32 128, label %86
  ]

82:                                               ; preds = %78
  %83 = load i32, i32* @CTLX_REQ_COMPLETE, align 4
  %84 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %7, align 8
  %85 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %112

86:                                               ; preds = %78
  %87 = load i32, i32* @CTLX_COMPLETE, align 4
  %88 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %7, align 8
  %89 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %91 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %7, align 8
  %92 = call i32 @unlocked_usbctlx_complete(%struct.hfa384x* %90, %struct.hfa384x_usbctlx* %91)
  store i32 1, i32* %6, align 4
  br label %112

93:                                               ; preds = %78
  %94 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %95 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %94, i32 0, i32 5
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %7, align 8
  %100 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @le16_to_cpu(i32 %102)
  %104 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %7, align 8
  %105 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ctlxstr(i32 %106)
  %108 = load %struct.urb*, %struct.urb** %2, align 8
  %109 = getelementptr inbounds %struct.urb, %struct.urb* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @netdev_err(%struct.TYPE_9__* %98, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %93, %86, %82
  br label %150

113:                                              ; preds = %71
  %114 = load %struct.urb*, %struct.urb** %2, align 8
  %115 = getelementptr inbounds %struct.urb, %struct.urb* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @EPIPE, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %143

120:                                              ; preds = %113
  %121 = load i32, i32* @WORK_TX_HALT, align 4
  %122 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %123 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %122, i32 0, i32 6
  %124 = call i32 @test_and_set_bit(i32 %121, i32* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %143, label %126

126:                                              ; preds = %120
  %127 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %128 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %127, i32 0, i32 5
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %133 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %132, i32 0, i32 5
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @netdev_warn(%struct.TYPE_9__* %131, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %141 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %140, i32 0, i32 4
  %142 = call i32 @schedule_work(i32* %141)
  br label %143

143:                                              ; preds = %126, %120, %113
  %144 = load i32, i32* @CTLX_REQ_FAILED, align 4
  %145 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %7, align 8
  %146 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %148 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %7, align 8
  %149 = call i32 @unlocked_usbctlx_complete(%struct.hfa384x* %147, %struct.hfa384x_usbctlx* %148)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %6, align 4
  br label %150

150:                                              ; preds = %143, %112
  br label %151

151:                                              ; preds = %177, %150
  %152 = load i32, i32* %4, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %151
  %155 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %156 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %155, i32 0, i32 3
  %157 = call i32 @del_timer(i32* %156)
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %162 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %161, i32 0, i32 1
  store i32 1, i32* %162, align 4
  br label %163

163:                                              ; preds = %160, %154
  br label %164

164:                                              ; preds = %163, %151
  %165 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %166 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i64, i64* %8, align 8
  %169 = call i32 @spin_unlock_irqrestore(i32* %167, i64 %168)
  %170 = load i32, i32* %5, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %183, label %172

172:                                              ; preds = %164
  %173 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %174 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %179 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i64, i64* %8, align 8
  %182 = call i32 @spin_lock_irqsave(i32* %180, i64 %181)
  br label %151

183:                                              ; preds = %172, %164
  %184 = load i32, i32* %6, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load %struct.hfa384x*, %struct.hfa384x** %3, align 8
  %188 = call i32 @hfa384x_usbctlxq_run(%struct.hfa384x* %187)
  br label %189

189:                                              ; preds = %32, %45, %186, %183
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local %struct.hfa384x_usbctlx* @get_active_ctlx(%struct.hfa384x*) #1

declare dso_local i32 @unlocked_usbctlx_complete(%struct.hfa384x*, %struct.hfa384x_usbctlx*) #1

declare dso_local i32 @netdev_err(%struct.TYPE_9__*, i8*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ctlxstr(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @hfa384x_usbctlxq_run(%struct.hfa384x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
