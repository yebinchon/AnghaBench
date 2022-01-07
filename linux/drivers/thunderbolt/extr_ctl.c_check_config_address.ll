; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_check_config_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_check_config_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_cfg_address = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"addr.zero is %#x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"wrong space (expected %x, got %x\0A)\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"wrong offset (expected %x, got %x\0A)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_cfg_address*, i32, i64, i64)* @check_config_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_config_address(%struct.tb_cfg_address* byval(%struct.tb_cfg_address) align 8 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = getelementptr inbounds %struct.tb_cfg_address, %struct.tb_cfg_address* %0, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.tb_cfg_address, %struct.tb_cfg_address* %0, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = call i64 (i32, i8*, i64, ...) @WARN(i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %63

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds %struct.tb_cfg_address, %struct.tb_cfg_address* %0, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %20, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.tb_cfg_address, %struct.tb_cfg_address* %0, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 (i32, i8*, i64, ...) @WARN(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %26, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %63

34:                                               ; preds = %19
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.tb_cfg_address, %struct.tb_cfg_address* %0, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %35, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.tb_cfg_address, %struct.tb_cfg_address* %0, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i64 (i32, i8*, i64, ...) @WARN(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %40, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %63

48:                                               ; preds = %34
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds %struct.tb_cfg_address, %struct.tb_cfg_address* %0, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %49, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds %struct.tb_cfg_address, %struct.tb_cfg_address* %0, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i64 (i32, i8*, i64, ...) @WARN(i32 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %54, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %63

62:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %59, %45, %31, %16
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @WARN(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
