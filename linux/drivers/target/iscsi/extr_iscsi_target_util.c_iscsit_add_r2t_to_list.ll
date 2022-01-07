; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_add_r2t_to_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_add_r2t_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32, i32, i32 }
%struct.iscsi_r2t = type { i32, i32, i8*, i8*, i8* }

@lio_r2t_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Unable to allocate memory for struct iscsi_r2t.\0A\00", align 1
@ISTATE_SEND_R2T = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_add_r2t_to_list(%struct.iscsi_cmd* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iscsi_cmd*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.iscsi_r2t*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %14 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %13, i32 0, i32 0
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load i8*, i8** %9, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = icmp slt i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON_ONCE(i32 %19)
  %21 = load i32, i32* @lio_r2t_cache, align 4
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call %struct.iscsi_r2t* @kmem_cache_zalloc(i32 %21, i32 %22)
  store %struct.iscsi_r2t* %23, %struct.iscsi_r2t** %12, align 8
  %24 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %12, align 8
  %25 = icmp ne %struct.iscsi_r2t* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %5
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %73

28:                                               ; preds = %5
  %29 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %12, align 8
  %30 = getelementptr inbounds %struct.iscsi_r2t, %struct.iscsi_r2t* %29, i32 0, i32 1
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %12, align 8
  %34 = getelementptr inbounds %struct.iscsi_r2t, %struct.iscsi_r2t* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %28
  %38 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = sext i32 %40 to i64
  %43 = inttoptr i64 %42 to i8*
  br label %46

44:                                               ; preds = %28
  %45 = load i8*, i8** %11, align 8
  br label %46

46:                                               ; preds = %44, %37
  %47 = phi i8* [ %43, %37 ], [ %45, %44 ]
  %48 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %12, align 8
  %49 = getelementptr inbounds %struct.iscsi_r2t, %struct.iscsi_r2t* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %12, align 8
  %52 = getelementptr inbounds %struct.iscsi_r2t, %struct.iscsi_r2t* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %12, align 8
  %55 = getelementptr inbounds %struct.iscsi_r2t, %struct.iscsi_r2t* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %12, align 8
  %57 = getelementptr inbounds %struct.iscsi_r2t, %struct.iscsi_r2t* %56, i32 0, i32 1
  %58 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %59 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %58, i32 0, i32 2
  %60 = call i32 @list_add_tail(i32* %57, i32* %59)
  %61 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %62 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock_bh(i32* %62)
  %64 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %65 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %66 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ISTATE_SEND_R2T, align 4
  %69 = call i32 @iscsit_add_cmd_to_immediate_queue(%struct.iscsi_cmd* %64, i32 %67, i32 %68)
  %70 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %7, align 8
  %71 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %70, i32 0, i32 0
  %72 = call i32 @spin_lock_bh(i32* %71)
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %46, %26
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.iscsi_r2t* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsit_add_cmd_to_immediate_queue(%struct.iscsi_cmd*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
