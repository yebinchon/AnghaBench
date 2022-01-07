; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_acm_tty_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_acm_tty_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.acm* }
%struct.acm = type { i32, i32, i32, i64, i32, %struct.TYPE_2__*, i32, %struct.acm_wb* }
%struct.TYPE_2__ = type { i32 }
%struct.acm_wb = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"%d bytes from tty layer\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"writing %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @acm_tty_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acm_tty_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.acm_wb*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load %struct.acm*, %struct.acm** %14, align 8
  store %struct.acm* %15, %struct.acm** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %133

19:                                               ; preds = %3
  %20 = load %struct.acm*, %struct.acm** %8, align 8
  %21 = getelementptr inbounds %struct.acm, %struct.acm* %20, i32 0, i32 5
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dev_vdbg(i32* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.acm*, %struct.acm** %8, align 8
  %27 = getelementptr inbounds %struct.acm, %struct.acm* %26, i32 0, i32 1
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.acm*, %struct.acm** %8, align 8
  %31 = call i32 @acm_wb_alloc(%struct.acm* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %19
  %35 = load %struct.acm*, %struct.acm** %8, align 8
  %36 = getelementptr inbounds %struct.acm, %struct.acm* %35, i32 0, i32 1
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  store i32 0, i32* %4, align 4
  br label %133

39:                                               ; preds = %19
  %40 = load %struct.acm*, %struct.acm** %8, align 8
  %41 = getelementptr inbounds %struct.acm, %struct.acm* %40, i32 0, i32 7
  %42 = load %struct.acm_wb*, %struct.acm_wb** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %42, i64 %44
  store %struct.acm_wb* %45, %struct.acm_wb** %12, align 8
  %46 = load %struct.acm*, %struct.acm** %8, align 8
  %47 = getelementptr inbounds %struct.acm, %struct.acm* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %39
  %51 = load %struct.acm_wb*, %struct.acm_wb** %12, align 8
  %52 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.acm*, %struct.acm** %8, align 8
  %54 = getelementptr inbounds %struct.acm, %struct.acm* %53, i32 0, i32 1
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %133

59:                                               ; preds = %39
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.acm*, %struct.acm** %8, align 8
  %62 = getelementptr inbounds %struct.acm, %struct.acm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.acm*, %struct.acm** %8, align 8
  %67 = getelementptr inbounds %struct.acm, %struct.acm* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  br label %71

69:                                               ; preds = %59
  %70 = load i32, i32* %7, align 4
  br label %71

71:                                               ; preds = %69, %65
  %72 = phi i32 [ %68, %65 ], [ %70, %69 ]
  store i32 %72, i32* %7, align 4
  %73 = load %struct.acm*, %struct.acm** %8, align 8
  %74 = getelementptr inbounds %struct.acm, %struct.acm* %73, i32 0, i32 5
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @dev_vdbg(i32* %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load %struct.acm_wb*, %struct.acm_wb** %12, align 8
  %80 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @memcpy(i32 %81, i8* %82, i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.acm_wb*, %struct.acm_wb** %12, align 8
  %87 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.acm*, %struct.acm** %8, align 8
  %89 = getelementptr inbounds %struct.acm, %struct.acm* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @usb_autopm_get_interface_async(i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %71
  %95 = load %struct.acm_wb*, %struct.acm_wb** %12, align 8
  %96 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %95, i32 0, i32 2
  store i64 0, i64* %96, align 8
  %97 = load %struct.acm*, %struct.acm** %8, align 8
  %98 = getelementptr inbounds %struct.acm, %struct.acm* %97, i32 0, i32 1
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* %98, i64 %99)
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %4, align 4
  br label %133

102:                                              ; preds = %71
  %103 = load %struct.acm*, %struct.acm** %8, align 8
  %104 = getelementptr inbounds %struct.acm, %struct.acm* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %102
  %108 = load %struct.acm_wb*, %struct.acm_wb** %12, align 8
  %109 = getelementptr inbounds %struct.acm_wb, %struct.acm_wb* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.acm*, %struct.acm** %8, align 8
  %112 = getelementptr inbounds %struct.acm, %struct.acm* %111, i32 0, i32 2
  %113 = call i32 @usb_anchor_urb(i32 %110, i32* %112)
  %114 = load %struct.acm*, %struct.acm** %8, align 8
  %115 = getelementptr inbounds %struct.acm, %struct.acm* %114, i32 0, i32 1
  %116 = load i64, i64* %10, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %4, align 4
  br label %133

119:                                              ; preds = %102
  %120 = load %struct.acm*, %struct.acm** %8, align 8
  %121 = load %struct.acm_wb*, %struct.acm_wb** %12, align 8
  %122 = call i32 @acm_start_wb(%struct.acm* %120, %struct.acm_wb* %121)
  store i32 %122, i32* %9, align 4
  %123 = load %struct.acm*, %struct.acm** %8, align 8
  %124 = getelementptr inbounds %struct.acm, %struct.acm* %123, i32 0, i32 1
  %125 = load i64, i64* %10, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  %127 = load i32, i32* %9, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %119
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %4, align 4
  br label %133

131:                                              ; preds = %119
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %129, %107, %94, %50, %34, %18
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @dev_vdbg(i32*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @acm_wb_alloc(%struct.acm*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @usb_autopm_get_interface_async(i32) #1

declare dso_local i32 @usb_anchor_urb(i32, i32*) #1

declare dso_local i32 @acm_start_wb(%struct.acm*, %struct.acm_wb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
