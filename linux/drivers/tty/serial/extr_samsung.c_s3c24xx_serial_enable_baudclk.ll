; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_enable_baudclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_enable_baudclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_uart_port = type { %struct.TYPE_4__, i32, %struct.clk*, %struct.TYPE_3__*, %struct.s3c24xx_uart_info* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.clk = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.s3c24xx_uart_info = type { i32, i32 }

@MAX_CLK_NAME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"clk_uart_baud%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c24xx_uart_port*)* @s3c24xx_serial_enable_baudclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_serial_enable_baudclk(%struct.s3c24xx_uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s3c24xx_uart_port*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.s3c24xx_uart_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.s3c24xx_uart_port* %0, %struct.s3c24xx_uart_port** %3, align 8
  %13 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %14 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %4, align 8
  %17 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %18 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %17, i32 0, i32 4
  %19 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %18, align 8
  store %struct.s3c24xx_uart_info* %19, %struct.s3c24xx_uart_info** %5, align 8
  %20 = load i32, i32* @MAX_CLK_NAME_LENGTH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %24 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %25 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %35

31:                                               ; preds = %1
  %32 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %5, align 8
  %33 = getelementptr inbounds %struct.s3c24xx_uart_info, %struct.s3c24xx_uart_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  br label %35

35:                                               ; preds = %31, %30
  %36 = phi i32 [ %28, %30 ], [ %34, %31 ]
  store i32 %36, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %79, %35
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %5, align 8
  %40 = getelementptr inbounds %struct.s3c24xx_uart_info, %struct.s3c24xx_uart_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %82

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = shl i32 1, %45
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %79

50:                                               ; preds = %43
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call %struct.clk* @clk_get(%struct.device* %53, i8* %23)
  store %struct.clk* %54, %struct.clk** %9, align 8
  %55 = load %struct.clk*, %struct.clk** %9, align 8
  %56 = call i64 @IS_ERR(%struct.clk* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %79

59:                                               ; preds = %50
  %60 = load %struct.clk*, %struct.clk** %9, align 8
  %61 = call i32 @clk_prepare_enable(%struct.clk* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.clk*, %struct.clk** %9, align 8
  %66 = call i32 @clk_put(%struct.clk* %65)
  br label %79

67:                                               ; preds = %59
  %68 = load %struct.clk*, %struct.clk** %9, align 8
  %69 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %70 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %69, i32 0, i32 2
  store %struct.clk* %68, %struct.clk** %70, align 8
  %71 = load %struct.clk*, %struct.clk** %9, align 8
  %72 = call i32 @clk_get_rate(%struct.clk* %71)
  %73 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %74 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %76 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %75, i32 0, i32 0
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @s3c24xx_serial_setsource(%struct.TYPE_4__* %76, i32 %77)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %85

79:                                               ; preds = %64, %58, %49
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %37

82:                                               ; preds = %37
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %85

85:                                               ; preds = %82, %67
  %86 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local %struct.clk* @clk_get(%struct.device*, i8*) #2

declare dso_local i64 @IS_ERR(%struct.clk*) #2

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #2

declare dso_local i32 @clk_put(%struct.clk*) #2

declare dso_local i32 @clk_get_rate(%struct.clk*) #2

declare dso_local i32 @s3c24xx_serial_setsource(%struct.TYPE_4__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
