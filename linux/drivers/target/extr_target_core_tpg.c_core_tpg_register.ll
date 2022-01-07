; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_core_tpg_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_tpg.c_core_tpg_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_wwn = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.se_portal_group*)*, i32* (%struct.se_portal_group*)*, i32 }
%struct.se_portal_group = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.se_wwn*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unable to locate se_tpg->se_tpg_tfo pointer\0A\00", align 1
@g_lun0_dev = common dso_local global i32 0, align 4
@tpg_lock = common dso_local global i32 0, align 4
@tpg_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"TARGET_CORE[%s]: Allocated portal_group for endpoint: %s, Proto: %d, Portal Tag: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_tpg_register(%struct.se_wwn* %0, %struct.se_portal_group* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_wwn*, align 8
  %6 = alloca %struct.se_portal_group*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.se_wwn* %0, %struct.se_wwn** %5, align 8
  store %struct.se_portal_group* %1, %struct.se_portal_group** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %10 = icmp ne %struct.se_portal_group* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %141

14:                                               ; preds = %3
  %15 = load %struct.se_wwn*, %struct.se_wwn** %5, align 8
  %16 = icmp ne %struct.se_wwn* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load %struct.se_wwn*, %struct.se_wwn** %5, align 8
  %19 = getelementptr inbounds %struct.se_wwn, %struct.se_wwn* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %24 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %23, i32 0, i32 1
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %24, align 8
  br label %25

25:                                               ; preds = %17, %14
  %26 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %27 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %141

34:                                               ; preds = %25
  %35 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %36 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %35, i32 0, i32 11
  %37 = call i32 @INIT_HLIST_HEAD(i32* %36)
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %40 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.se_wwn*, %struct.se_wwn** %5, align 8
  %42 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %43 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %42, i32 0, i32 10
  store %struct.se_wwn* %41, %struct.se_wwn** %43, align 8
  %44 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %45 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %44, i32 0, i32 9
  %46 = call i32 @atomic_set(i32* %45, i32 0)
  %47 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %48 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %47, i32 0, i32 8
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %51 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %50, i32 0, i32 2
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %54 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %53, i32 0, i32 7
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %57 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %56, i32 0, i32 6
  %58 = call i32 @spin_lock_init(i32* %57)
  %59 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %60 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %59, i32 0, i32 5
  %61 = call i32 @mutex_init(i32* %60)
  %62 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %63 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %62, i32 0, i32 4
  %64 = call i32 @mutex_init(i32* %63)
  %65 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %66 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %100

69:                                               ; preds = %34
  %70 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %71 = call i32 @core_tpg_alloc_lun(%struct.se_portal_group* %70, i32 0)
  %72 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %73 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %75 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @IS_ERR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %69
  %80 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %81 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @PTR_ERR(i32 %82)
  store i32 %83, i32* %4, align 4
  br label %141

84:                                               ; preds = %69
  %85 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %86 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %87 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @g_lun0_dev, align 4
  %90 = call i32 @core_tpg_add_lun(%struct.se_portal_group* %85, i32 %88, i32 1, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %84
  %94 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %95 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @kfree(i32 %96)
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %4, align 4
  br label %141

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %99, %34
  %101 = call i32 @spin_lock_bh(i32* @tpg_lock)
  %102 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %103 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %102, i32 0, i32 2
  %104 = call i32 @list_add_tail(i32* %103, i32* @tpg_list)
  %105 = call i32 @spin_unlock_bh(i32* @tpg_lock)
  %106 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %107 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %112 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32* (%struct.se_portal_group*)*, i32* (%struct.se_portal_group*)** %114, align 8
  %116 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %117 = call i32* %115(%struct.se_portal_group* %116)
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %100
  %120 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %121 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32* (%struct.se_portal_group*)*, i32* (%struct.se_portal_group*)** %123, align 8
  %125 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %126 = call i32* %124(%struct.se_portal_group* %125)
  br label %128

127:                                              ; preds = %100
  br label %128

128:                                              ; preds = %127, %119
  %129 = phi i32* [ %126, %119 ], [ null, %127 ]
  %130 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %131 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %134 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %133, i32 0, i32 1
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %136, align 8
  %138 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %139 = call i32 %137(%struct.se_portal_group* %138)
  %140 = call i32 @pr_debug(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32* %129, i32 %132, i32 %139)
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %128, %93, %79, %30, %11
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @core_tpg_alloc_lun(%struct.se_portal_group*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @core_tpg_add_lun(%struct.se_portal_group*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
