; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_config_from_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_config_from_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_config = type { i32, i32, i32, i32*, i32*, i32*, i32*, %struct.fsg_lun_config* }
%struct.fsg_lun_config = type { i32, i32, i32, i64* }
%struct.fsg_module_parameters = type { i32, i32, i64**, i32*, i32*, i32*, i64 }

@FSG_MAX_LUNS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsg_config_from_params(%struct.fsg_config* %0, %struct.fsg_module_parameters* %1, i32 %2) #0 {
  %4 = alloca %struct.fsg_config*, align 8
  %5 = alloca %struct.fsg_module_parameters*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsg_lun_config*, align 8
  %8 = alloca i32, align 4
  store %struct.fsg_config* %0, %struct.fsg_config** %4, align 8
  store %struct.fsg_module_parameters* %1, %struct.fsg_module_parameters** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.fsg_module_parameters*, %struct.fsg_module_parameters** %5, align 8
  %10 = getelementptr inbounds %struct.fsg_module_parameters, %struct.fsg_module_parameters* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %24

14:                                               ; preds = %3
  %15 = load %struct.fsg_module_parameters*, %struct.fsg_module_parameters** %5, align 8
  %16 = getelementptr inbounds %struct.fsg_module_parameters, %struct.fsg_module_parameters* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %21

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %19
  %22 = phi i32 [ %17, %19 ], [ 1, %20 ]
  %23 = zext i32 %22 to i64
  br label %24

24:                                               ; preds = %21, %13
  %25 = phi i64 [ %11, %13 ], [ %23, %21 ]
  %26 = trunc i64 %25 to i32
  %27 = load i64, i64* @FSG_MAX_LUNS, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @min(i32 %26, i32 %28)
  %30 = load %struct.fsg_config*, %struct.fsg_config** %4, align 8
  %31 = getelementptr inbounds %struct.fsg_config, %struct.fsg_config* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  store i32 0, i32* %8, align 4
  %32 = load %struct.fsg_config*, %struct.fsg_config** %4, align 8
  %33 = getelementptr inbounds %struct.fsg_config, %struct.fsg_config* %32, i32 0, i32 7
  %34 = load %struct.fsg_lun_config*, %struct.fsg_lun_config** %33, align 8
  store %struct.fsg_lun_config* %34, %struct.fsg_lun_config** %7, align 8
  br label %35

35:                                               ; preds = %110, %24
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.fsg_config*, %struct.fsg_config** %4, align 8
  %38 = getelementptr inbounds %struct.fsg_config, %struct.fsg_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %115

41:                                               ; preds = %35
  %42 = load %struct.fsg_module_parameters*, %struct.fsg_module_parameters** %5, align 8
  %43 = getelementptr inbounds %struct.fsg_module_parameters, %struct.fsg_module_parameters* %42, i32 0, i32 5
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load %struct.fsg_lun_config*, %struct.fsg_lun_config** %7, align 8
  %54 = getelementptr inbounds %struct.fsg_lun_config, %struct.fsg_lun_config* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.fsg_module_parameters*, %struct.fsg_module_parameters** %5, align 8
  %56 = getelementptr inbounds %struct.fsg_module_parameters, %struct.fsg_module_parameters* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load %struct.fsg_lun_config*, %struct.fsg_lun_config** %7, align 8
  %67 = getelementptr inbounds %struct.fsg_lun_config, %struct.fsg_lun_config* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.fsg_module_parameters*, %struct.fsg_module_parameters** %5, align 8
  %69 = getelementptr inbounds %struct.fsg_module_parameters, %struct.fsg_module_parameters* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = load %struct.fsg_lun_config*, %struct.fsg_lun_config** %7, align 8
  %80 = getelementptr inbounds %struct.fsg_lun_config, %struct.fsg_lun_config* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.fsg_module_parameters*, %struct.fsg_module_parameters** %5, align 8
  %82 = getelementptr inbounds %struct.fsg_module_parameters, %struct.fsg_module_parameters* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = icmp ugt i32 %83, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %41
  %87 = load %struct.fsg_module_parameters*, %struct.fsg_module_parameters** %5, align 8
  %88 = getelementptr inbounds %struct.fsg_module_parameters, %struct.fsg_module_parameters* %87, i32 0, i32 2
  %89 = load i64**, i64*** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i64*, i64** %89, i64 %91
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %86
  %98 = load %struct.fsg_module_parameters*, %struct.fsg_module_parameters** %5, align 8
  %99 = getelementptr inbounds %struct.fsg_module_parameters, %struct.fsg_module_parameters* %98, i32 0, i32 2
  %100 = load i64**, i64*** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i64*, i64** %100, i64 %102
  %104 = load i64*, i64** %103, align 8
  br label %106

105:                                              ; preds = %86, %41
  br label %106

106:                                              ; preds = %105, %97
  %107 = phi i64* [ %104, %97 ], [ null, %105 ]
  %108 = load %struct.fsg_lun_config*, %struct.fsg_lun_config** %7, align 8
  %109 = getelementptr inbounds %struct.fsg_lun_config, %struct.fsg_lun_config* %108, i32 0, i32 3
  store i64* %107, i64** %109, align 8
  br label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %8, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %8, align 4
  %113 = load %struct.fsg_lun_config*, %struct.fsg_lun_config** %7, align 8
  %114 = getelementptr inbounds %struct.fsg_lun_config, %struct.fsg_lun_config* %113, i32 1
  store %struct.fsg_lun_config* %114, %struct.fsg_lun_config** %7, align 8
  br label %35

115:                                              ; preds = %35
  %116 = load %struct.fsg_config*, %struct.fsg_config** %4, align 8
  %117 = getelementptr inbounds %struct.fsg_config, %struct.fsg_config* %116, i32 0, i32 6
  store i32* null, i32** %117, align 8
  %118 = load %struct.fsg_config*, %struct.fsg_config** %4, align 8
  %119 = getelementptr inbounds %struct.fsg_config, %struct.fsg_config* %118, i32 0, i32 5
  store i32* null, i32** %119, align 8
  %120 = load %struct.fsg_config*, %struct.fsg_config** %4, align 8
  %121 = getelementptr inbounds %struct.fsg_config, %struct.fsg_config* %120, i32 0, i32 4
  store i32* null, i32** %121, align 8
  %122 = load %struct.fsg_config*, %struct.fsg_config** %4, align 8
  %123 = getelementptr inbounds %struct.fsg_config, %struct.fsg_config* %122, i32 0, i32 3
  store i32* null, i32** %123, align 8
  %124 = load %struct.fsg_module_parameters*, %struct.fsg_module_parameters** %5, align 8
  %125 = getelementptr inbounds %struct.fsg_module_parameters, %struct.fsg_module_parameters* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.fsg_config*, %struct.fsg_config** %4, align 8
  %128 = getelementptr inbounds %struct.fsg_config, %struct.fsg_config* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.fsg_config*, %struct.fsg_config** %4, align 8
  %131 = getelementptr inbounds %struct.fsg_config, %struct.fsg_config* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  ret void
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
