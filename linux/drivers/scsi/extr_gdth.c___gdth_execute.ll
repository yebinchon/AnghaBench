; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth.c___gdth_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth.c___gdth_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.scsi_cmnd = type { i32, i8*, %struct.scsi_cmnd*, %struct.request*, %struct.scsi_device* }
%struct.request = type { i32 }
%struct.gdth_cmndinfo = type { i32, i32, i32, i32*, i32 }

@wait = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@IOCTL_PRI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"__gdth_execute() cmd 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__gdth_execute(%struct.scsi_device* %0, i32* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.scsi_cmnd*, align 8
  %14 = alloca %struct.gdth_cmndinfo, align 8
  %15 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @shost_priv(i32 %18)
  store i32* %19, i32** %12, align 8
  %20 = load i32, i32* @wait, align 4
  %21 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %20)
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kzalloc(i32 40, i32 %22)
  %24 = bitcast i8* %23 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %24, %struct.scsi_cmnd** %13, align 8
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %26 = icmp ne %struct.scsi_cmnd* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %91

30:                                               ; preds = %5
  %31 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kzalloc(i32 %31, i32 %32)
  %34 = bitcast i8* %33 to %struct.scsi_cmnd*
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 2
  store %struct.scsi_cmnd* %34, %struct.scsi_cmnd** %36, align 8
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 2
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %38, align 8
  %40 = icmp ne %struct.scsi_cmnd* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %30
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %43 = call i32 @kfree(%struct.scsi_cmnd* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %91

46:                                               ; preds = %30
  %47 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %49 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %48, i32 0, i32 4
  store %struct.scsi_device* %47, %struct.scsi_device** %49, align 8
  %50 = call i32 @memset(%struct.gdth_cmndinfo* %14, i32 0, i32 32)
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %52 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %51, i32 0, i32 3
  store %struct.request* bitcast (i32* @wait to %struct.request*), %struct.request** %52, align 8
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %54 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %53, i32 0, i32 0
  store i32 12, i32* %54, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* @IOCTL_PRI, align 4
  %59 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %14, i32 0, i32 4
  store i32 %58, i32* %59, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %14, i32 0, i32 3
  store i32* %60, i32** %61, align 8
  %62 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %14, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 @TRACE(i8* %69)
  %71 = load i32*, i32** %12, align 8
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %73 = call i32 @__gdth_queuecommand(i32* %71, %struct.scsi_cmnd* %72, %struct.gdth_cmndinfo* %14)
  %74 = call i32 @wait_for_completion(i32* @wait)
  %75 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %14, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %15, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %46
  %80 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %14, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %11, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %46
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %85 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %84, i32 0, i32 2
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %85, align 8
  %87 = call i32 @kfree(%struct.scsi_cmnd* %86)
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %89 = call i32 @kfree(%struct.scsi_cmnd* %88)
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %83, %41, %27
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32* @shost_priv(i32) #1

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.scsi_cmnd*) #1

declare dso_local i32 @memset(%struct.gdth_cmndinfo*, i32, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @__gdth_queuecommand(i32*, %struct.scsi_cmnd*, %struct.gdth_cmndinfo*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
