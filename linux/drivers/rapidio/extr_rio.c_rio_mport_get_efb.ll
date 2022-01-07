; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_mport_get_efb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_mport_get_efb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32 }

@RIO_ASM_INFO_CAR = common dso_local global i64 0, align 8
@RIO_EXT_FTR_PTR_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rio_mport_get_efb(%struct.rio_mport* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.rio_mport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.rio_mport* %0, %struct.rio_mport** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %11, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %20 = load i64, i64* @RIO_ASM_INFO_CAR, align 8
  %21 = call i32 @rio_local_read_config_32(%struct.rio_mport* %19, i64 %20, i64* %12)
  br label %28

22:                                               ; preds = %15
  %23 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i64, i64* @RIO_ASM_INFO_CAR, align 8
  %27 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %23, i32 %24, i32 %25, i64 %26, i64* %12)
  br label %28

28:                                               ; preds = %22, %18
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @RIO_EXT_FTR_PTR_MASK, align 8
  %31 = and i64 %29, %30
  store i64 %31, i64* %6, align 8
  br label %48

32:                                               ; preds = %5
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @rio_local_read_config_32(%struct.rio_mport* %36, i64 %37, i64* %12)
  br label %45

39:                                               ; preds = %32
  %40 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %40, i32 %41, i32 %42, i64 %43, i64* %12)
  br label %45

45:                                               ; preds = %39, %35
  %46 = load i64, i64* %12, align 8
  %47 = call i64 @RIO_GET_BLOCK_ID(i64 %46)
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %45, %28
  %49 = load i64, i64* %6, align 8
  ret i64 %49
}

declare dso_local i32 @rio_local_read_config_32(%struct.rio_mport*, i64, i64*) #1

declare dso_local i32 @rio_mport_read_config_32(%struct.rio_mport*, i32, i32, i64, i64*) #1

declare dso_local i64 @RIO_GET_BLOCK_ID(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
