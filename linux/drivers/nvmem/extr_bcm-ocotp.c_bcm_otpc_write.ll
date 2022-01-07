; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_bcm-ocotp.c_bcm_otpc_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_bcm-ocotp.c_bcm_otpc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otpc_priv = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@OTPC_CMD_PROGRAM = common dso_local global i32 0, align 4
@OTPC_STAT_CMD_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"otp write error: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @bcm_otpc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_otpc_write(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.otpc_priv*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.otpc_priv*
  store %struct.otpc_priv* %17, %struct.otpc_priv** %10, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to i64*
  store i64* %19, i64** %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %22 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = udiv i32 %20, %25
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %13, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %30 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = urem i32 %28, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %129

39:                                               ; preds = %4
  %40 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %41 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @enable_ocotp_program(i64 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %129

49:                                               ; preds = %39
  store i64 0, i64* %12, align 8
  br label %50

50:                                               ; preds = %123, %49
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %124

54:                                               ; preds = %50
  %55 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %56 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @OTPC_CMD_PROGRAM, align 4
  %59 = call i32 @set_command(i64 %57, i32 %58)
  %60 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %61 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %13, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %13, align 8
  %65 = trunc i64 %63 to i32
  %66 = call i32 @set_cpu_address(i64 %62, i32 %65)
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %96, %54
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %70 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %68, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %67
  %76 = load i64*, i64** %11, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %79 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %82 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %80, %89
  %91 = call i32 @writel(i64 %77, i64 %90)
  %92 = load i64*, i64** %11, align 8
  %93 = getelementptr inbounds i64, i64* %92, i32 1
  store i64* %93, i64** %11, align 8
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %94, 8
  store i64 %95, i64* %12, align 8
  br label %96

96:                                               ; preds = %75
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %67

99:                                               ; preds = %67
  %100 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %101 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @set_start_bit(i64 %102)
  %104 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %105 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @OTPC_STAT_CMD_DONE, align 4
  %108 = call i32 @poll_cpu_status(i64 %106, i32 %107)
  store i32 %108, i32* %15, align 4
  %109 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %110 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @reset_start_bit(i64 %111)
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %99
  %116 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %117 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @dev_err(i32 %118, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %5, align 4
  br label %129

123:                                              ; preds = %99
  br label %50

124:                                              ; preds = %50
  %125 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %126 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @disable_ocotp_program(i64 %127)
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %124, %115, %46, %36
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @enable_ocotp_program(i64) #1

declare dso_local i32 @set_command(i64, i32) #1

declare dso_local i32 @set_cpu_address(i64, i32) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @set_start_bit(i64) #1

declare dso_local i32 @poll_cpu_status(i64, i32) #1

declare dso_local i32 @reset_start_bit(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @disable_ocotp_program(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
