; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pscsi.c_pscsi_tape_read_blocksize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pscsi.c_pscsi_tape_read_blocksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.scsi_device = type { i32 }

@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MODE_SENSE = common dso_local global i8 0, align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_device*, %struct.scsi_device*)* @pscsi_tape_read_blocksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pscsi_tape_read_blocksize(%struct.se_device* %0, %struct.scsi_device* %1) #0 {
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %3, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %4, align 8
  %9 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 12, i32 %13)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %38

18:                                               ; preds = %2
  %19 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %20 = call i32 @memset(i8* %12, i32 0, i32 %19)
  %21 = load i8, i8* @MODE_SENSE, align 1
  %22 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 %21, i8* %22, align 16
  %23 = getelementptr inbounds i8, i8* %12, i64 4
  store i8 12, i8* %23, align 4
  %24 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %25 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @HZ, align 4
  %28 = call i32 @scsi_execute_req(%struct.scsi_device* %24, i8* %12, i32 %25, i8* %26, i32 12, i32* null, i32 %27, i32 1, i32* null)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %38

32:                                               ; preds = %18
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 9
  %35 = call i32 @get_unaligned_be24(i8* %34)
  %36 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %37 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %31, %17
  %39 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %40 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %45 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %44, i32 0, i32 0
  store i32 1024, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @kfree(i8* %47)
  %49 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %49)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i8*, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @get_unaligned_be24(i8*) #2

declare dso_local i32 @kfree(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
