; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_bcm-ocotp.c_bcm_otpc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_bcm-ocotp.c_bcm_otpc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otpc_priv = type { i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64* }
%struct.TYPE_3__ = type { i32 }

@OTPC_CMD_READ = common dso_local global i32 0, align 4
@OTPC_STAT_CMD_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"otp read error: 0x%x\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @bcm_otpc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_otpc_read(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
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
  store i64 0, i64* %12, align 8
  br label %28

28:                                               ; preds = %96, %4
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %101

32:                                               ; preds = %28
  %33 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %34 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @OTPC_CMD_READ, align 4
  %37 = call i32 @set_command(i64 %35, i32 %36)
  %38 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %39 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %13, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %13, align 8
  %43 = trunc i64 %41 to i32
  %44 = call i32 @set_cpu_address(i64 %40, i32 %43)
  %45 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %46 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @set_start_bit(i64 %47)
  %49 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %50 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @OTPC_STAT_CMD_DONE, align 4
  %53 = call i32 @poll_cpu_status(i64 %51, i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %32
  %57 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %58 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %102

64:                                               ; preds = %32
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %93, %64
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %68 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %66, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %65
  %74 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %75 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %78 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %76, %85
  %87 = call i32 @readl(i64 %86)
  %88 = sext i32 %87 to i64
  %89 = load i64*, i64** %11, align 8
  %90 = getelementptr inbounds i64, i64* %89, i32 1
  store i64* %90, i64** %11, align 8
  store i64 %88, i64* %89, align 8
  %91 = load i64, i64* %12, align 8
  %92 = add i64 %91, 8
  store i64 %92, i64* %12, align 8
  br label %93

93:                                               ; preds = %73
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %65

96:                                               ; preds = %65
  %97 = load %struct.otpc_priv*, %struct.otpc_priv** %10, align 8
  %98 = getelementptr inbounds %struct.otpc_priv, %struct.otpc_priv* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @reset_start_bit(i64 %99)
  br label %28

101:                                              ; preds = %28
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %56
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @set_command(i64, i32) #1

declare dso_local i32 @set_cpu_address(i64, i32) #1

declare dso_local i32 @set_start_bit(i64) #1

declare dso_local i32 @poll_cpu_status(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @reset_start_bit(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
