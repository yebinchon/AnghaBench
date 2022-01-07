; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_get_empty_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_get_empty_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcmu_dev = type { i32, i32, i32, i32 }
%struct.tcmu_cmd = type { i32 }
%struct.page = type { i32 }

@global_db_count = common dso_local global i32 0, align 4
@tcmu_global_max_blocks = common dso_local global i64 0, align 8
@tcmu_unmap_work = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcmu_dev*, %struct.tcmu_cmd*)* @tcmu_get_empty_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcmu_get_empty_block(%struct.tcmu_dev* %0, %struct.tcmu_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcmu_dev*, align 8
  %5 = alloca %struct.tcmu_cmd*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tcmu_dev* %0, %struct.tcmu_dev** %4, align 8
  store %struct.tcmu_cmd* %1, %struct.tcmu_cmd** %5, align 8
  %9 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %10 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %13 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @find_first_zero_bit(i32 %11, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %18 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

22:                                               ; preds = %2
  %23 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %24 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %23, i32 0, i32 3
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.page* @radix_tree_lookup(i32* %24, i32 %25)
  store %struct.page* %26, %struct.page** %6, align 8
  %27 = load %struct.page*, %struct.page** %6, align 8
  %28 = icmp ne %struct.page* %27, null
  br i1 %28, label %51, label %29

29:                                               ; preds = %22
  %30 = call i64 @atomic_add_return(i32 1, i32* @global_db_count)
  %31 = load i64, i64* @tcmu_global_max_blocks, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @schedule_delayed_work(i32* @tcmu_unmap_work, i32 0)
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.page* @alloc_page(i32 %36)
  store %struct.page* %37, %struct.page** %6, align 8
  %38 = load %struct.page*, %struct.page** %6, align 8
  %39 = icmp ne %struct.page* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %73

41:                                               ; preds = %35
  %42 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %43 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %42, i32 0, i32 3
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.page*, %struct.page** %6, align 8
  %46 = call i32 @radix_tree_insert(i32* %43, i32 %44, %struct.page* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %70

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %22
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %54 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %60 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %51
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %64 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @set_bit(i32 %62, i32 %65)
  %67 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @tcmu_cmd_set_dbi(%struct.tcmu_cmd* %67, i32 %68)
  store i32 1, i32* %3, align 4
  br label %75

70:                                               ; preds = %49
  %71 = load %struct.page*, %struct.page** %6, align 8
  %72 = call i32 @__free_page(%struct.page* %71)
  br label %73

73:                                               ; preds = %70, %40
  %74 = call i32 @atomic_dec(i32* @global_db_count)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %61, %21
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local %struct.page* @radix_tree_lookup(i32*, i32) #1

declare dso_local i64 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.page*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @tcmu_cmd_set_dbi(%struct.tcmu_cmd*, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
