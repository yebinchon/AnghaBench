; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c___zd_usb_enable_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c___zd_usb_enable_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { %struct.zd_usb_rx }
%struct.zd_usb_rx = type { i32, i32, %struct.urb** }
%struct.urb = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RX_URBS_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_usb*)* @__zd_usb_enable_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__zd_usb_enable_rx(%struct.zd_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zd_usb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.zd_usb_rx*, align 8
  %7 = alloca %struct.urb**, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %3, align 8
  %8 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %9 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %8, i32 0, i32 0
  store %struct.zd_usb_rx* %9, %struct.zd_usb_rx** %6, align 8
  %10 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %11 = call i32 @zd_usb_dev(%struct.zd_usb* %10)
  %12 = call i32 @dev_dbg_f(i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @RX_URBS_COUNT, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.urb** @kcalloc(i32 %15, i32 8, i32 %16)
  store %struct.urb** %17, %struct.urb*** %7, align 8
  %18 = load %struct.urb**, %struct.urb*** %7, align 8
  %19 = icmp ne %struct.urb** %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %117

21:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %41, %21
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @RX_URBS_COUNT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %28 = call %struct.urb* @alloc_rx_urb(%struct.zd_usb* %27)
  %29 = load %struct.urb**, %struct.urb*** %7, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.urb*, %struct.urb** %29, i64 %31
  store %struct.urb* %28, %struct.urb** %32, align 8
  %33 = load %struct.urb**, %struct.urb*** %7, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.urb*, %struct.urb** %33, i64 %35
  %37 = load %struct.urb*, %struct.urb** %36, align 8
  %38 = icmp ne %struct.urb* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %26
  br label %117

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %22

44:                                               ; preds = %22
  %45 = call i32 (...) @irqs_disabled()
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @ZD_ASSERT(i32 %48)
  %50 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %6, align 8
  %51 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %50, i32 0, i32 1
  %52 = call i32 @spin_lock_irq(i32* %51)
  %53 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %6, align 8
  %54 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %53, i32 0, i32 2
  %55 = load %struct.urb**, %struct.urb*** %54, align 8
  %56 = icmp ne %struct.urb** %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %44
  %58 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %6, align 8
  %59 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %58, i32 0, i32 1
  %60 = call i32 @spin_unlock_irq(i32* %59)
  store i32 0, i32* %5, align 4
  br label %117

61:                                               ; preds = %44
  %62 = load %struct.urb**, %struct.urb*** %7, align 8
  %63 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %6, align 8
  %64 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %63, i32 0, i32 2
  store %struct.urb** %62, %struct.urb*** %64, align 8
  %65 = load i32, i32* @RX_URBS_COUNT, align 4
  %66 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %6, align 8
  %67 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %6, align 8
  %69 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %68, i32 0, i32 1
  %70 = call i32 @spin_unlock_irq(i32* %69)
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %87, %61
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @RX_URBS_COUNT, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load %struct.urb**, %struct.urb*** %7, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.urb*, %struct.urb** %76, i64 %78
  %80 = load %struct.urb*, %struct.urb** %79, align 8
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i32 @usb_submit_urb(%struct.urb* %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %91

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %71

90:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %138

91:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %103, %91
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @RX_URBS_COUNT, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load %struct.urb**, %struct.urb*** %7, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.urb*, %struct.urb** %97, i64 %99
  %101 = load %struct.urb*, %struct.urb** %100, align 8
  %102 = call i32 @usb_kill_urb(%struct.urb* %101)
  br label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %92

106:                                              ; preds = %92
  %107 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %6, align 8
  %108 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %107, i32 0, i32 1
  %109 = call i32 @spin_lock_irq(i32* %108)
  %110 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %6, align 8
  %111 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %110, i32 0, i32 2
  store %struct.urb** null, %struct.urb*** %111, align 8
  %112 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %6, align 8
  %113 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %112, i32 0, i32 0
  store i32 0, i32* %113, align 8
  %114 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %6, align 8
  %115 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %114, i32 0, i32 1
  %116 = call i32 @spin_unlock_irq(i32* %115)
  br label %117

117:                                              ; preds = %106, %57, %39, %20
  %118 = load %struct.urb**, %struct.urb*** %7, align 8
  %119 = icmp ne %struct.urb** %118, null
  br i1 %119, label %120, label %136

120:                                              ; preds = %117
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %132, %120
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @RX_URBS_COUNT, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = load %struct.urb**, %struct.urb*** %7, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.urb*, %struct.urb** %126, i64 %128
  %130 = load %struct.urb*, %struct.urb** %129, align 8
  %131 = call i32 @free_rx_urb(%struct.urb* %130)
  br label %132

132:                                              ; preds = %125
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %4, align 4
  br label %121

135:                                              ; preds = %121
  br label %136

136:                                              ; preds = %135, %117
  %137 = load i32, i32* %5, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %136, %90
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @dev_dbg_f(i32, i8*) #1

declare dso_local i32 @zd_usb_dev(%struct.zd_usb*) #1

declare dso_local %struct.urb** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.urb* @alloc_rx_urb(%struct.zd_usb*) #1

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @free_rx_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
