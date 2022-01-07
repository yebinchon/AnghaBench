; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_iov.c_sriov_numvfs_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_iov.c_sriov_numvfs_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pci_dev = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.pci_dev*, i32)* }
%struct.TYPE_3__ = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Driver does not support SRIOV configuration via sysfs\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"%d VFs already enabled. Disable before enabling %d VFs\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%d VFs requested; only %d enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sriov_numvfs_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sriov_numvfs_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.pci_dev* @to_pci_dev(%struct.device* %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtou16(i8* %15, i32 0, i32* %12)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %120

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %24 = call i32 @pci_sriov_get_totalvfs(%struct.pci_dev* %23)
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ERANGE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %120

29:                                               ; preds = %21
  %30 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = call i32 @device_lock(i32* %31)
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %109

41:                                               ; preds = %29
  %42 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = icmp ne %struct.TYPE_4__* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*, i32)** %50, align 8
  %52 = icmp ne i32 (%struct.pci_dev*, i32)* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %46, %41
  %54 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %55 = call i32 @pci_info(%struct.pci_dev* %54, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %11, align 4
  br label %109

58:                                               ; preds = %46
  %59 = load i32, i32* %12, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*, i32)** %65, align 8
  %67 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %68 = call i32 %66(%struct.pci_dev* %67, i32 0)
  store i32 %68, i32* %11, align 4
  br label %109

69:                                               ; preds = %58
  %70 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %69
  %77 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %78 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 2
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @pci_warn(%struct.pci_dev* %77, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load i32, i32* @EBUSY, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %11, align 4
  br label %109

87:                                               ; preds = %69
  %88 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %89 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*, i32)** %91, align 8
  %93 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %94 = load i32, i32* %12, align 4
  %95 = call i32 %92(%struct.pci_dev* %93, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %109

99:                                               ; preds = %87
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @pci_warn(%struct.pci_dev* %104, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %99
  br label %109

109:                                              ; preds = %108, %98, %76, %61, %53, %40
  %110 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %111 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %110, i32 0, i32 0
  %112 = call i32 @device_unlock(i32* %111)
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %5, align 4
  br label %120

117:                                              ; preds = %109
  %118 = load i64, i64* %9, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %117, %115, %26, %19
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @kstrtou16(i8*, i32, i32*) #1

declare dso_local i32 @pci_sriov_get_totalvfs(%struct.pci_dev*) #1

declare dso_local i32 @device_lock(i32*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_warn(%struct.pci_dev*, i8*, i32, i32) #1

declare dso_local i32 @device_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
