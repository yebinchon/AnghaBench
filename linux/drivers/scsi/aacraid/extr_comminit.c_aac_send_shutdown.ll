; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_comminit.c_aac_send_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_comminit.c_aac_send_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32, i64, i32 }
%struct.fib = type { i32 }
%struct.aac_close = type { i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@VM_CloseAll = common dso_local global i32 0, align 4
@ContainerCommand = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_send_shutdown(%struct.aac_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca %struct.fib*, align 8
  %5 = alloca %struct.aac_close*, align 8
  %6 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %8 = call i64 @aac_adapter_check_health(%struct.aac_dev* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %2, align 4
  br label %80

12:                                               ; preds = %1
  %13 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %14 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %19 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %18, i32 0, i32 2
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %22 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %24 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %23, i32 0, i32 2
  %25 = call i32 @mutex_unlock(i32* %24)
  br label %26

26:                                               ; preds = %17, %12
  %27 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %28 = call i32 @aac_wait_for_io_completion(%struct.aac_dev* %27)
  %29 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %30 = call %struct.fib* @aac_fib_alloc(%struct.aac_dev* %29)
  store %struct.fib* %30, %struct.fib** %4, align 8
  %31 = load %struct.fib*, %struct.fib** %4, align 8
  %32 = icmp ne %struct.fib* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %80

36:                                               ; preds = %26
  %37 = load %struct.fib*, %struct.fib** %4, align 8
  %38 = call i32 @aac_fib_init(%struct.fib* %37)
  %39 = load %struct.fib*, %struct.fib** %4, align 8
  %40 = call i64 @fib_data(%struct.fib* %39)
  %41 = inttoptr i64 %40 to %struct.aac_close*
  store %struct.aac_close* %41, %struct.aac_close** %5, align 8
  %42 = load i32, i32* @VM_CloseAll, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.aac_close*, %struct.aac_close** %5, align 8
  %45 = getelementptr inbounds %struct.aac_close, %struct.aac_close* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = call i8* @cpu_to_le32(i32 -2)
  %47 = load %struct.aac_close*, %struct.aac_close** %5, align 8
  %48 = getelementptr inbounds %struct.aac_close, %struct.aac_close* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @ContainerCommand, align 4
  %50 = load %struct.fib*, %struct.fib** %4, align 8
  %51 = load i32, i32* @FsaNormal, align 4
  %52 = call i32 @aac_fib_send(i32 %49, %struct.fib* %50, i32 16, i32 %51, i32 -2, i32 1, i32* null, i32* null)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %36
  %56 = load %struct.fib*, %struct.fib** %4, align 8
  %57 = call i32 @aac_fib_complete(%struct.fib* %56)
  br label %58

58:                                               ; preds = %55, %36
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @ERESTARTSYS, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.fib*, %struct.fib** %4, align 8
  %65 = call i32 @aac_fib_free(%struct.fib* %64)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %68 = call i64 @aac_is_src(%struct.aac_dev* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %72 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %77 = call i32 @aac_set_intx_mode(%struct.aac_dev* %76)
  br label %78

78:                                               ; preds = %75, %70, %66
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %33, %10
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @aac_adapter_check_health(%struct.aac_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @aac_wait_for_io_completion(%struct.aac_dev*) #1

declare dso_local %struct.fib* @aac_fib_alloc(%struct.aac_dev*) #1

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @aac_fib_complete(%struct.fib*) #1

declare dso_local i32 @aac_fib_free(%struct.fib*) #1

declare dso_local i64 @aac_is_src(%struct.aac_dev*) #1

declare dso_local i32 @aac_set_intx_mode(%struct.aac_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
