; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_getclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_getclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_uart_port = type { %struct.s3c24xx_uart_info*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.s3c24xx_uart_info = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.clk = type { i32 }

@MAX_CLK_NAME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"clk_uart_baud%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c24xx_uart_port*, i32, %struct.clk**, i32*)* @s3c24xx_serial_getclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_serial_getclk(%struct.s3c24xx_uart_port* %0, i32 %1, %struct.clk** %2, i32* %3) #0 {
  %5 = alloca %struct.s3c24xx_uart_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.s3c24xx_uart_info*, align 8
  %10 = alloca %struct.clk*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.s3c24xx_uart_port* %0, %struct.s3c24xx_uart_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.clk** %2, %struct.clk*** %7, align 8
  store i32* %3, i32** %8, align 8
  %22 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %5, align 8
  %23 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %22, i32 0, i32 0
  %24 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %23, align 8
  store %struct.s3c24xx_uart_info* %24, %struct.s3c24xx_uart_info** %9, align 8
  store i32 0, i32* %16, align 4
  %25 = load i32, i32* @MAX_CLK_NAME_LENGTH, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %17, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %18, align 8
  store i32 1073741823, i32* %20, align 4
  %29 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %5, align 8
  %30 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %4
  %36 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %5, align 8
  %37 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  br label %47

41:                                               ; preds = %4
  %42 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %5, align 8
  %43 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %42, i32 0, i32 0
  %44 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %43, align 8
  %45 = getelementptr inbounds %struct.s3c24xx_uart_info, %struct.s3c24xx_uart_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  br label %47

47:                                               ; preds = %41, %35
  %48 = phi i32 [ %40, %35 ], [ %46, %41 ]
  store i32 %48, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %139, %47
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %9, align 8
  %52 = getelementptr inbounds %struct.s3c24xx_uart_info, %struct.s3c24xx_uart_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %55, label %142

55:                                               ; preds = %49
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %12, align 4
  %58 = shl i32 1, %57
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %139

62:                                               ; preds = %55
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %5, align 8
  %66 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.clk* @clk_get(i32 %68, i8* %28)
  store %struct.clk* %69, %struct.clk** %10, align 8
  %70 = load %struct.clk*, %struct.clk** %10, align 8
  %71 = call i64 @IS_ERR(%struct.clk* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %139

74:                                               ; preds = %62
  %75 = load %struct.clk*, %struct.clk** %10, align 8
  %76 = call i64 @clk_get_rate(%struct.clk* %75)
  store i64 %76, i64* %11, align 8
  %77 = load i64, i64* %11, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %139

80:                                               ; preds = %74
  %81 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %5, align 8
  %82 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %81, i32 0, i32 0
  %83 = load %struct.s3c24xx_uart_info*, %struct.s3c24xx_uart_info** %82, align 8
  %84 = getelementptr inbounds %struct.s3c24xx_uart_info, %struct.s3c24xx_uart_info* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %80
  %88 = load i64, i64* %11, align 8
  %89 = load i32, i32* %6, align 4
  %90 = zext i32 %89 to i64
  %91 = udiv i64 %88, %90
  store i64 %91, i64* %21, align 8
  %92 = load i64, i64* %21, align 8
  %93 = udiv i64 %92, 16
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %14, align 4
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %21, align 8
  %97 = udiv i64 %95, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %13, align 4
  br label %116

99:                                               ; preds = %80
  %100 = load i64, i64* %11, align 8
  %101 = load i32, i32* %6, align 4
  %102 = mul i32 8, %101
  %103 = zext i32 %102 to i64
  %104 = add i64 %100, %103
  %105 = load i32, i32* %6, align 4
  %106 = mul i32 16, %105
  %107 = zext i32 %106 to i64
  %108 = udiv i64 %104, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %14, align 4
  %110 = load i64, i64* %11, align 8
  %111 = load i32, i32* %14, align 4
  %112 = mul i32 %111, 16
  %113 = zext i32 %112 to i64
  %114 = udiv i64 %110, %113
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %99, %87
  %117 = load i32, i32* %14, align 4
  %118 = add i32 %117, -1
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %13, align 4
  %121 = sub i32 %119, %120
  store i32 %121, i32* %19, align 4
  %122 = load i32, i32* %19, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load i32, i32* %19, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %19, align 4
  br label %127

127:                                              ; preds = %124, %116
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* %20, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = load %struct.clk*, %struct.clk** %10, align 8
  %133 = load %struct.clk**, %struct.clk*** %7, align 8
  store %struct.clk* %132, %struct.clk** %133, align 8
  %134 = load i32, i32* %14, align 4
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load i32*, i32** %8, align 8
  store i32 %135, i32* %136, align 4
  %137 = load i32, i32* %19, align 4
  store i32 %137, i32* %20, align 4
  br label %138

138:                                              ; preds = %131, %127
  br label %139

139:                                              ; preds = %138, %79, %73, %61
  %140 = load i32, i32* %12, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %49

142:                                              ; preds = %49
  %143 = load i32, i32* %16, align 4
  %144 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %144)
  ret i32 %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local %struct.clk* @clk_get(i32, i8*) #2

declare dso_local i64 @IS_ERR(%struct.clk*) #2

declare dso_local i64 @clk_get_rate(%struct.clk*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
