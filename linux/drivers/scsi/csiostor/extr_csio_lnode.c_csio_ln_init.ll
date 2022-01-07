; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_ln_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_lnode = type { %struct.TYPE_2__*, i32, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.csio_hw = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@csio_lns_uninit = common dso_local global i32 0, align 4
@CSIO_INVALID_IDX = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to alloc FCF record\0A\00", align 1
@n_err_nomem = common dso_local global i32 0, align 4
@csio_fdmi_enable = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to alloc FCF info\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_lnode*)* @csio_ln_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_ln_init(%struct.csio_lnode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csio_lnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_lnode*, align 8
  %6 = alloca %struct.csio_lnode*, align 8
  %7 = alloca %struct.csio_hw*, align 8
  store %struct.csio_lnode* %0, %struct.csio_lnode** %3, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %11 = call %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode* %10)
  store %struct.csio_hw* %11, %struct.csio_hw** %7, align 8
  %12 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %13 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %12, i32 0, i32 4
  %14 = load i32, i32* @csio_lns_uninit, align 4
  %15 = call i32 @csio_init_state(i32* %13, i32 %14)
  %16 = load i8*, i8** @CSIO_INVALID_IDX, align 8
  %17 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %18 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @CSIO_INVALID_IDX, align 8
  %20 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %21 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %23 = call i64 @csio_is_root_ln(%struct.csio_lnode* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kzalloc(i32 4, i32 %26)
  %28 = bitcast i8* %27 to %struct.TYPE_2__*
  %29 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %30 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %29, i32 0, i32 0
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %30, align 8
  %31 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %32 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = icmp ne %struct.TYPE_2__* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %25
  %36 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %37 = call i32 @csio_ln_err(%struct.csio_lnode* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.csio_hw*, %struct.csio_hw** %7, align 8
  %39 = load i32, i32* @n_err_nomem, align 4
  %40 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %38, i32 %39)
  br label %109

41:                                               ; preds = %25
  %42 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %43 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %42, i32 0, i32 1
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %46 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @kref_init(i32* %48)
  %50 = load i64, i64* @csio_fdmi_enable, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %54 = call i64 @csio_ln_fdmi_init(%struct.csio_lnode* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %109

57:                                               ; preds = %52, %41
  br label %108

58:                                               ; preds = %1
  %59 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %60 = call %struct.csio_lnode* @csio_root_lnode(%struct.csio_lnode* %59)
  store %struct.csio_lnode* %60, %struct.csio_lnode** %5, align 8
  %61 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %62 = call i64 @csio_is_npiv_ln(%struct.csio_lnode* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %66 = call %struct.csio_lnode* @csio_parent_lnode(%struct.csio_lnode* %65)
  store %struct.csio_lnode* %66, %struct.csio_lnode** %6, align 8
  %67 = load %struct.csio_lnode*, %struct.csio_lnode** %6, align 8
  %68 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @kref_get(i32* %70)
  %72 = load %struct.csio_lnode*, %struct.csio_lnode** %6, align 8
  %73 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %76 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %75, i32 0, i32 0
  store %struct.TYPE_2__* %74, %struct.TYPE_2__** %76, align 8
  br label %107

77:                                               ; preds = %58
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i8* @kzalloc(i32 4, i32 %78)
  %80 = bitcast i8* %79 to %struct.TYPE_2__*
  %81 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %82 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %81, i32 0, i32 0
  store %struct.TYPE_2__* %80, %struct.TYPE_2__** %82, align 8
  %83 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %84 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = icmp ne %struct.TYPE_2__* %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %77
  %88 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %89 = call i32 @csio_ln_err(%struct.csio_lnode* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %90 = load %struct.csio_hw*, %struct.csio_hw** %7, align 8
  %91 = load i32, i32* @n_err_nomem, align 4
  %92 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %90, i32 %91)
  br label %109

93:                                               ; preds = %77
  %94 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %95 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = call i32 @kref_init(i32* %97)
  %99 = load i64, i64* @csio_fdmi_enable, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load %struct.csio_lnode*, %struct.csio_lnode** %3, align 8
  %103 = call i64 @csio_ln_fdmi_init(%struct.csio_lnode* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %109

106:                                              ; preds = %101, %93
  br label %107

107:                                              ; preds = %106, %64
  br label %108

108:                                              ; preds = %107, %57
  store i32 0, i32* %2, align 4
  br label %111

109:                                              ; preds = %105, %87, %56, %35
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %108
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.csio_hw* @csio_lnode_to_hw(%struct.csio_lnode*) #1

declare dso_local i32 @csio_init_state(i32*, i32) #1

declare dso_local i64 @csio_is_root_ln(%struct.csio_lnode*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @csio_ln_err(%struct.csio_lnode*, i8*) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i64 @csio_ln_fdmi_init(%struct.csio_lnode*) #1

declare dso_local %struct.csio_lnode* @csio_root_lnode(%struct.csio_lnode*) #1

declare dso_local i64 @csio_is_npiv_ln(%struct.csio_lnode*) #1

declare dso_local %struct.csio_lnode* @csio_parent_lnode(%struct.csio_lnode*) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
