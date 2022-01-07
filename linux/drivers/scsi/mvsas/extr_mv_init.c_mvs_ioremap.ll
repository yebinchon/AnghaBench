; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_init.c_mvs_ioremap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_init.c_mvs_ioremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { i32*, i8*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@IORESOURCE_MEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvs_ioremap(%struct.mvs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pci_dev*, align 8
  store %struct.mvs_info* %0, %struct.mvs_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %11, align 8
  %13 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %14 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %13, i32 0, i32 2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %12, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %59

18:                                               ; preds = %3
  %19 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @pci_resource_start(%struct.pci_dev* %19, i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @pci_resource_len(%struct.pci_dev* %22, i32 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %18
  br label %110

31:                                               ; preds = %27
  %32 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @pci_resource_flags(%struct.pci_dev* %32, i32 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @IORESOURCE_MEM, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i8* @ioremap(i64 %40, i64 %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %45 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  br label %52

46:                                               ; preds = %31
  %47 = load i64, i64* %8, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %51 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %50, i32 0, i32 0
  store i32* %49, i32** %51, align 8
  br label %52

52:                                               ; preds = %46, %39
  %53 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %54 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %110

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %3
  %60 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @pci_resource_start(%struct.pci_dev* %60, i32 %61)
  store i64 %62, i64* %8, align 8
  %63 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @pci_resource_len(%struct.pci_dev* %63, i32 %64)
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i64, i64* %9, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %68, %59
  %72 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %73 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @iounmap(i32* %74)
  %76 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %77 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  br label %110

78:                                               ; preds = %68
  %79 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @pci_resource_flags(%struct.pci_dev* %79, i32 %80)
  store i64 %81, i64* %10, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i8* @ioremap(i64 %82, i64 %83)
  %85 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %86 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %88 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %109, label %91

91:                                               ; preds = %78
  %92 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %93 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* @IORESOURCE_MEM, align 8
  %99 = and i64 %97, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %103 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @iounmap(i32* %104)
  br label %106

106:                                              ; preds = %101, %96, %91
  %107 = load %struct.mvs_info*, %struct.mvs_info** %5, align 8
  %108 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %107, i32 0, i32 0
  store i32* null, i32** %108, align 8
  br label %110

109:                                              ; preds = %78
  store i32 0, i32* %4, align 4
  br label %111

110:                                              ; preds = %106, %71, %57, %30
  store i32 -1, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %109
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i8* @ioremap(i64, i64) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
