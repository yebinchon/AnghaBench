; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_lock_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_lock_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i64 }

@RIO_HOST_DID_LOCK_CSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"RIO: timeout when locking device %x:%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rio_lock_device(%struct.rio_mport* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rio_mport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @RIO_HOST_DID_LOCK_CSR, align 4
  %16 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %17 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %12, i32 %13, i32 %14, i32 %15, i64 %18)
  %20 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @RIO_HOST_DID_LOCK_CSR, align 4
  %24 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %20, i32 %21, i32 %22, i32 %23, i64* %10)
  br label %25

25:                                               ; preds = %44, %4
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %28 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %62

44:                                               ; preds = %34, %31
  %45 = call i32 @mdelay(i32 1)
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  %48 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @RIO_HOST_DID_LOCK_CSR, align 4
  %52 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %53 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @rio_mport_write_config_32(%struct.rio_mport* %48, i32 %49, i32 %50, i32 %51, i64 %54)
  %56 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @RIO_HOST_DID_LOCK_CSR, align 4
  %60 = call i32 @rio_mport_read_config_32(%struct.rio_mport* %56, i32 %57, i32 %58, i32 %59, i64* %10)
  br label %25

61:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %38
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @rio_mport_write_config_32(%struct.rio_mport*, i32, i32, i32, i64) #1

declare dso_local i32 @rio_mport_read_config_32(%struct.rio_mport*, i32, i32, i32, i64*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
