; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_request_inb_dbell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_request_inb_dbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RIO_DOORBELL_RESOURCE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rio_request_inb_dbell(%struct.rio_mport* %0, i8* %1, i32 %2, i32 %3, void (%struct.rio_mport*, i8*, i32, i32, i32)* %4) #0 {
  %6 = alloca %struct.rio_mport*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.rio_mport*, i8*, i32, i32, i32)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  store %struct.rio_mport* %0, %struct.rio_mport** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store void (%struct.rio_mport*, i8*, i32, i32, i32)* %4, void (%struct.rio_mport*, i8*, i32, i32, i32)** %10, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.resource* @kzalloc(i32 4, i32 %13)
  store %struct.resource* %14, %struct.resource** %12, align 8
  %15 = load %struct.resource*, %struct.resource** %12, align 8
  %16 = icmp ne %struct.resource* %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %5
  %18 = load %struct.resource*, %struct.resource** %12, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @rio_init_dbell_res(%struct.resource* %18, i32 %19, i32 %20)
  %22 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %23 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @RIO_DOORBELL_RESOURCE, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load %struct.resource*, %struct.resource** %12, align 8
  %28 = call i32 @request_resource(i32* %26, %struct.resource* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load %struct.resource*, %struct.resource** %12, align 8
  %33 = call i32 @kfree(%struct.resource* %32)
  br label %44

34:                                               ; preds = %17
  %35 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.resource*, %struct.resource** %12, align 8
  %38 = load void (%struct.rio_mport*, i8*, i32, i32, i32)*, void (%struct.rio_mport*, i8*, i32, i32, i32)** %10, align 8
  %39 = call i32 @rio_setup_inb_dbell(%struct.rio_mport* %35, i8* %36, %struct.resource* %37, void (%struct.rio_mport*, i8*, i32, i32, i32)* %38)
  store i32 %39, i32* %11, align 4
  br label %43

40:                                               ; preds = %5
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %40, %34
  br label %44

44:                                               ; preds = %43, %31
  %45 = load i32, i32* %11, align 4
  ret i32 %45
}

declare dso_local %struct.resource* @kzalloc(i32, i32) #1

declare dso_local i32 @rio_init_dbell_res(%struct.resource*, i32, i32) #1

declare dso_local i32 @request_resource(i32*, %struct.resource*) #1

declare dso_local i32 @kfree(%struct.resource*) #1

declare dso_local i32 @rio_setup_inb_dbell(%struct.rio_mport*, i8*, %struct.resource*, void (%struct.rio_mport*, i8*, i32, i32, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
