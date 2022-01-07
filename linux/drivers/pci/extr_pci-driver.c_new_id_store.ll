; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-driver.c_new_id_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-driver.c_new_id_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }
%struct.pci_driver = type { %struct.pci_device_id* }
%struct.pci_device_id = type { i64, i64, i64, i64 }
%struct.pci_dev = type { i8*, i8*, i8*, i8*, i8* }

@PCI_ANY_ID = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"%x %x %x %x %x %x %lx\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_driver*, i8*, i64)* @new_id_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_id_store(%struct.device_driver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pci_driver*, align 8
  %9 = alloca %struct.pci_device_id*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.pci_dev*, align 8
  store %struct.device_driver* %0, %struct.device_driver** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %20 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %21 = call %struct.pci_driver* @to_pci_driver(%struct.device_driver* %20)
  store %struct.pci_driver* %21, %struct.pci_driver** %8, align 8
  %22 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  %23 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %22, i32 0, i32 0
  %24 = load %struct.pci_device_id*, %struct.pci_device_id** %23, align 8
  store %struct.pci_device_id* %24, %struct.pci_device_id** %9, align 8
  %25 = load i8*, i8** @PCI_ANY_ID, align 8
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** @PCI_ANY_ID, align 8
  store i8* %26, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @sscanf(i8* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %10, i8** %11, i8** %12, i8** %13, i8** %14, i8** %15, i64* %16)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %134

34:                                               ; preds = %3
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 7
  br i1 %36, label %37, label %78

37:                                               ; preds = %34
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.pci_dev* @kzalloc(i32 40, i32 %38)
  store %struct.pci_dev* %39, %struct.pci_dev** %19, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %41 = icmp ne %struct.pci_dev* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %134

45:                                               ; preds = %37
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  %62 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %61, i32 0, i32 0
  %63 = load %struct.pci_device_id*, %struct.pci_device_id** %62, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %65 = call i64 @pci_match_id(%struct.pci_device_id* %63, %struct.pci_dev* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %45
  %68 = load i32, i32* @EEXIST, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %18, align 4
  br label %70

70:                                               ; preds = %67, %45
  %71 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  %72 = call i32 @kfree(%struct.pci_dev* %71)
  %73 = load i32, i32* %18, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %18, align 4
  store i32 %76, i32* %4, align 4
  br label %134

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %34
  %79 = load %struct.pci_device_id*, %struct.pci_device_id** %9, align 8
  %80 = icmp ne %struct.pci_device_id* %79, null
  br i1 %80, label %81, label %117

81:                                               ; preds = %78
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %18, align 4
  br label %84

84:                                               ; preds = %108, %81
  %85 = load %struct.pci_device_id*, %struct.pci_device_id** %9, align 8
  %86 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %84
  %90 = load %struct.pci_device_id*, %struct.pci_device_id** %9, align 8
  %91 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load %struct.pci_device_id*, %struct.pci_device_id** %9, align 8
  %96 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br label %99

99:                                               ; preds = %94, %89, %84
  %100 = phi i1 [ true, %89 ], [ true, %84 ], [ %98, %94 ]
  br i1 %100, label %101, label %111

101:                                              ; preds = %99
  %102 = load i64, i64* %16, align 8
  %103 = load %struct.pci_device_id*, %struct.pci_device_id** %9, align 8
  %104 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 0, i32* %18, align 4
  br label %111

108:                                              ; preds = %101
  %109 = load %struct.pci_device_id*, %struct.pci_device_id** %9, align 8
  %110 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %109, i32 1
  store %struct.pci_device_id* %110, %struct.pci_device_id** %9, align 8
  br label %84

111:                                              ; preds = %107, %99
  %112 = load i32, i32* %18, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* %18, align 4
  store i32 %115, i32* %4, align 4
  br label %134

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116, %78
  %118 = load %struct.pci_driver*, %struct.pci_driver** %8, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = load i8*, i8** %14, align 8
  %124 = load i8*, i8** %15, align 8
  %125 = load i64, i64* %16, align 8
  %126 = call i32 @pci_add_dynid(%struct.pci_driver* %118, i8* %119, i8* %120, i8* %121, i8* %122, i8* %123, i8* %124, i64 %125)
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %18, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %117
  %130 = load i32, i32* %18, align 4
  store i32 %130, i32* %4, align 4
  br label %134

131:                                              ; preds = %117
  %132 = load i64, i64* %7, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %131, %129, %114, %75, %42, %31
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local %struct.pci_driver* @to_pci_driver(%struct.device_driver*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8**, i8**, i8**, i8**, i8**, i8**, i64*) #1

declare dso_local %struct.pci_dev* @kzalloc(i32, i32) #1

declare dso_local i64 @pci_match_id(%struct.pci_device_id*, %struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.pci_dev*) #1

declare dso_local i32 @pci_add_dynid(%struct.pci_driver*, i8*, i8*, i8*, i8*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
