; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_request_inb_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_request_inb_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { void (%struct.rio_mport*, i8*, i32, i32)*, %struct.resource* }
%struct.resource = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.rio_mport*, i8*, i32, i32)* }

@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RIO_INB_MBOX_RESOURCE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rio_request_inb_mbox(%struct.rio_mport* %0, i8* %1, i32 %2, i32 %3, void (%struct.rio_mport*, i8*, i32, i32)* %4) #0 {
  %6 = alloca %struct.rio_mport*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.rio_mport*, i8*, i32, i32)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  store %struct.rio_mport* %0, %struct.rio_mport** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store void (%struct.rio_mport*, i8*, i32, i32)* %4, void (%struct.rio_mport*, i8*, i32, i32)** %10, align 8
  %13 = load i32, i32* @ENOSYS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  %15 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %16 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.rio_mport*, i8*, i32, i32)*, i32 (%struct.rio_mport*, i8*, i32, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.rio_mport*, i8*, i32, i32)* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  br label %97

22:                                               ; preds = %5
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.resource* @kzalloc(i32 4, i32 %23)
  store %struct.resource* %24, %struct.resource** %12, align 8
  %25 = load %struct.resource*, %struct.resource** %12, align 8
  %26 = icmp ne %struct.resource* %25, null
  br i1 %26, label %27, label %93

27:                                               ; preds = %22
  %28 = load %struct.resource*, %struct.resource** %12, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @rio_init_mbox_res(%struct.resource* %28, i32 %29, i32 %30)
  %32 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %33 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @RIO_INB_MBOX_RESOURCE, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load %struct.resource*, %struct.resource** %12, align 8
  %38 = call i32 @request_resource(i32* %36, %struct.resource* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %27
  %42 = load %struct.resource*, %struct.resource** %12, align 8
  %43 = call i32 @kfree(%struct.resource* %42)
  br label %97

44:                                               ; preds = %27
  %45 = load %struct.resource*, %struct.resource** %12, align 8
  %46 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %47 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store %struct.resource* %45, %struct.resource** %52, align 8
  %53 = load void (%struct.rio_mport*, i8*, i32, i32)*, void (%struct.rio_mport*, i8*, i32, i32)** %10, align 8
  %54 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %55 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store void (%struct.rio_mport*, i8*, i32, i32)* %53, void (%struct.rio_mport*, i8*, i32, i32)** %60, align 8
  %61 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %62 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32 (%struct.rio_mport*, i8*, i32, i32)*, i32 (%struct.rio_mport*, i8*, i32, i32)** %64, align 8
  %66 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 %65(%struct.rio_mport* %66, i8* %67, i32 %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %44
  %74 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %75 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store void (%struct.rio_mport*, i8*, i32, i32)* null, void (%struct.rio_mport*, i8*, i32, i32)** %80, align 8
  %81 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %82 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store %struct.resource* null, %struct.resource** %87, align 8
  %88 = load %struct.resource*, %struct.resource** %12, align 8
  %89 = call i32 @release_resource(%struct.resource* %88)
  %90 = load %struct.resource*, %struct.resource** %12, align 8
  %91 = call i32 @kfree(%struct.resource* %90)
  br label %92

92:                                               ; preds = %73, %44
  br label %96

93:                                               ; preds = %22
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %93, %92
  br label %97

97:                                               ; preds = %96, %41, %21
  %98 = load i32, i32* %11, align 4
  ret i32 %98
}

declare dso_local %struct.resource* @kzalloc(i32, i32) #1

declare dso_local i32 @rio_init_mbox_res(%struct.resource*, i32, i32) #1

declare dso_local i32 @request_resource(i32*, %struct.resource*) #1

declare dso_local i32 @kfree(%struct.resource*) #1

declare dso_local i32 @release_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
