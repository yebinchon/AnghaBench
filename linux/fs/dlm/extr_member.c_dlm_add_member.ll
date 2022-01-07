; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_member.c_dlm_add_member.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_member.c_dlm_add_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_config_node = type { i32, i32, i32 }
%struct.dlm_member = type { i32, i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_config_node*)* @dlm_add_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_add_member(%struct.dlm_ls* %0, %struct.dlm_config_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca %struct.dlm_config_node*, align 8
  %6 = alloca %struct.dlm_member*, align 8
  %7 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store %struct.dlm_config_node* %1, %struct.dlm_config_node** %5, align 8
  %8 = load i32, i32* @GFP_NOFS, align 4
  %9 = call %struct.dlm_member* @kzalloc(i32 12, i32 %8)
  store %struct.dlm_member* %9, %struct.dlm_member** %6, align 8
  %10 = load %struct.dlm_member*, %struct.dlm_member** %6, align 8
  %11 = icmp ne %struct.dlm_member* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  %16 = load %struct.dlm_config_node*, %struct.dlm_config_node** %5, align 8
  %17 = getelementptr inbounds %struct.dlm_config_node, %struct.dlm_config_node* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dlm_lowcomms_connect_node(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.dlm_member*, %struct.dlm_member** %6, align 8
  %24 = call i32 @kfree(%struct.dlm_member* %23)
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %15
  %27 = load %struct.dlm_config_node*, %struct.dlm_config_node** %5, align 8
  %28 = getelementptr inbounds %struct.dlm_config_node, %struct.dlm_config_node* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dlm_member*, %struct.dlm_member** %6, align 8
  %31 = getelementptr inbounds %struct.dlm_member, %struct.dlm_member* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.dlm_config_node*, %struct.dlm_config_node** %5, align 8
  %33 = getelementptr inbounds %struct.dlm_config_node, %struct.dlm_config_node* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dlm_member*, %struct.dlm_member** %6, align 8
  %36 = getelementptr inbounds %struct.dlm_member, %struct.dlm_member* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.dlm_config_node*, %struct.dlm_config_node** %5, align 8
  %38 = getelementptr inbounds %struct.dlm_config_node, %struct.dlm_config_node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dlm_member*, %struct.dlm_member** %6, align 8
  %41 = getelementptr inbounds %struct.dlm_member, %struct.dlm_member* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %43 = load %struct.dlm_member*, %struct.dlm_member** %6, align 8
  %44 = call i32 @add_ordered_member(%struct.dlm_ls* %42, %struct.dlm_member* %43)
  %45 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %46 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %26, %22, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.dlm_member* @kzalloc(i32, i32) #1

declare dso_local i32 @dlm_lowcomms_connect_node(i32) #1

declare dso_local i32 @kfree(%struct.dlm_member*) #1

declare dso_local i32 @add_ordered_member(%struct.dlm_ls*, %struct.dlm_member*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
