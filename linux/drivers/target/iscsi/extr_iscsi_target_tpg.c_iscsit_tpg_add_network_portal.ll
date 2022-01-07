; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tpg.c_iscsit_tpg_add_network_portal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tpg.c_iscsit_tpg_add_network_portal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_portal_group = type { i32, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.iscsi_tpg_np = type { i32, i32, i32, %struct.iscsi_tpg_np*, i32, %struct.iscsi_portal_group*, %struct.iscsi_np*, i32, i32 }
%struct.iscsi_np = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"Network Portal: %pISc already exists on a different TPG on %s\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Unable to allocate memory for struct iscsi_tpg_np.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"CORE[%s] - Added Network Portal: %pISpc,%hu on %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_tpg_np* @iscsit_tpg_add_network_portal(%struct.iscsi_portal_group* %0, %struct.sockaddr_storage* %1, %struct.iscsi_tpg_np* %2, i32 %3) #0 {
  %5 = alloca %struct.iscsi_tpg_np*, align 8
  %6 = alloca %struct.iscsi_portal_group*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca %struct.iscsi_tpg_np*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_np*, align 8
  %11 = alloca %struct.iscsi_tpg_np*, align 8
  store %struct.iscsi_portal_group* %0, %struct.iscsi_portal_group** %6, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %7, align 8
  store %struct.iscsi_tpg_np* %2, %struct.iscsi_tpg_np** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %8, align 8
  %13 = icmp ne %struct.iscsi_tpg_np* %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %4
  %15 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %16 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @iscsit_tpg_check_network_portal(%struct.TYPE_4__* %17, %struct.sockaddr_storage* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %24 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %25 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), %struct.sockaddr_storage* %23, i32 %28)
  %30 = load i32, i32* @EEXIST, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.iscsi_tpg_np* @ERR_PTR(i32 %31)
  store %struct.iscsi_tpg_np* %32, %struct.iscsi_tpg_np** %5, align 8
  br label %143

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33, %4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.iscsi_tpg_np* @kzalloc(i32 56, i32 %35)
  store %struct.iscsi_tpg_np* %36, %struct.iscsi_tpg_np** %11, align 8
  %37 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %11, align 8
  %38 = icmp ne %struct.iscsi_tpg_np* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.iscsi_tpg_np* @ERR_PTR(i32 %42)
  store %struct.iscsi_tpg_np* %43, %struct.iscsi_tpg_np** %5, align 8
  br label %143

44:                                               ; preds = %34
  %45 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call %struct.iscsi_np* @iscsit_add_np(%struct.sockaddr_storage* %45, i32 %46)
  store %struct.iscsi_np* %47, %struct.iscsi_np** %10, align 8
  %48 = load %struct.iscsi_np*, %struct.iscsi_np** %10, align 8
  %49 = call i64 @IS_ERR(%struct.iscsi_np* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %11, align 8
  %53 = call i32 @kfree(%struct.iscsi_tpg_np* %52)
  %54 = load %struct.iscsi_np*, %struct.iscsi_np** %10, align 8
  %55 = call %struct.iscsi_tpg_np* @ERR_CAST(%struct.iscsi_np* %54)
  store %struct.iscsi_tpg_np* %55, %struct.iscsi_tpg_np** %5, align 8
  br label %143

56:                                               ; preds = %44
  %57 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %11, align 8
  %58 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %57, i32 0, i32 4
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %11, align 8
  %61 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %60, i32 0, i32 2
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %11, align 8
  %64 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %63, i32 0, i32 1
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %11, align 8
  %67 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %66, i32 0, i32 0
  %68 = call i32 @spin_lock_init(i32* %67)
  %69 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %11, align 8
  %70 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %69, i32 0, i32 8
  %71 = call i32 @init_completion(i32* %70)
  %72 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %11, align 8
  %73 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %72, i32 0, i32 7
  %74 = call i32 @kref_init(i32* %73)
  %75 = load %struct.iscsi_np*, %struct.iscsi_np** %10, align 8
  %76 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %11, align 8
  %77 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %76, i32 0, i32 6
  store %struct.iscsi_np* %75, %struct.iscsi_np** %77, align 8
  %78 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %79 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %11, align 8
  %80 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %79, i32 0, i32 5
  store %struct.iscsi_portal_group* %78, %struct.iscsi_portal_group** %80, align 8
  %81 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %82 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %81, i32 0, i32 2
  %83 = call i32 @spin_lock(i32* %82)
  %84 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %11, align 8
  %85 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %84, i32 0, i32 4
  %86 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %87 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %86, i32 0, i32 4
  %88 = call i32 @list_add_tail(i32* %85, i32* %87)
  %89 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %90 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %94 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = icmp ne %struct.TYPE_4__* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %56
  %98 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %99 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %97, %56
  %105 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %106 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %105, i32 0, i32 2
  %107 = call i32 @spin_unlock(i32* %106)
  %108 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %8, align 8
  %109 = icmp ne %struct.iscsi_tpg_np* %108, null
  br i1 %109, label %110, label %125

110:                                              ; preds = %104
  %111 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %8, align 8
  %112 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %11, align 8
  %113 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %112, i32 0, i32 3
  store %struct.iscsi_tpg_np* %111, %struct.iscsi_tpg_np** %113, align 8
  %114 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %8, align 8
  %115 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %114, i32 0, i32 0
  %116 = call i32 @spin_lock(i32* %115)
  %117 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %11, align 8
  %118 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %117, i32 0, i32 2
  %119 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %8, align 8
  %120 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %119, i32 0, i32 1
  %121 = call i32 @list_add_tail(i32* %118, i32* %120)
  %122 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %8, align 8
  %123 = getelementptr inbounds %struct.iscsi_tpg_np, %struct.iscsi_tpg_np* %122, i32 0, i32 0
  %124 = call i32 @spin_unlock(i32* %123)
  br label %125

125:                                              ; preds = %110, %104
  %126 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %127 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.iscsi_np*, %struct.iscsi_np** %10, align 8
  %132 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %131, i32 0, i32 1
  %133 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %6, align 8
  %134 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.iscsi_np*, %struct.iscsi_np** %10, align 8
  %137 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %136, i32 0, i32 0
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32* %132, i32 %135, i32 %140)
  %142 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %11, align 8
  store %struct.iscsi_tpg_np* %142, %struct.iscsi_tpg_np** %5, align 8
  br label %143

143:                                              ; preds = %125, %51, %39, %22
  %144 = load %struct.iscsi_tpg_np*, %struct.iscsi_tpg_np** %5, align 8
  ret %struct.iscsi_tpg_np* %144
}

declare dso_local i64 @iscsit_tpg_check_network_portal(%struct.TYPE_4__*, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.iscsi_tpg_np* @ERR_PTR(i32) #1

declare dso_local %struct.iscsi_tpg_np* @kzalloc(i32, i32) #1

declare dso_local %struct.iscsi_np* @iscsit_add_np(%struct.sockaddr_storage*, i32) #1

declare dso_local i64 @IS_ERR(%struct.iscsi_np*) #1

declare dso_local i32 @kfree(%struct.iscsi_tpg_np*) #1

declare dso_local %struct.iscsi_tpg_np* @ERR_CAST(%struct.iscsi_np*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
