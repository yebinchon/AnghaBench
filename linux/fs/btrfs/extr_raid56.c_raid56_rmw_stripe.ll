; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_raid56_rmw_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_raid56_rmw_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { i32, i32, i32, i32, i32, i32 }
%struct.bio_list = type { i32 }
%struct.bio = type { i32, i32, %struct.btrfs_raid_bio* }
%struct.page = type { i32 }

@raid_rmw_end_io = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@BTRFS_WQ_ENDIO_RAID56 = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_raid_bio*)* @raid56_rmw_stripe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid56_rmw_stripe(%struct.btrfs_raid_bio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_raid_bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio_list, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bio*, align 8
  %10 = alloca %struct.page*, align 8
  store %struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = call i32 @bio_list_init(%struct.bio_list* %5)
  %12 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %13 = call i32 @alloc_rbio_pages(%struct.btrfs_raid_bio* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %107

17:                                               ; preds = %1
  %18 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %19 = call i32 @index_rbio_pages(%struct.btrfs_raid_bio* %18)
  %20 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %21 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %20, i32 0, i32 5
  %22 = call i32 @atomic_set(i32* %21, i32 0)
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %70, %17
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %26 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %73

29:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %66, %29
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %33 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %30
  %37 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.page* @page_in_rbio(%struct.btrfs_raid_bio* %37, i32 %38, i32 %39, i32 1)
  store %struct.page* %40, %struct.page** %10, align 8
  %41 = load %struct.page*, %struct.page** %10, align 8
  %42 = icmp ne %struct.page* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %66

44:                                               ; preds = %36
  %45 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call %struct.page* @rbio_stripe_page(%struct.btrfs_raid_bio* %45, i32 %46, i32 %47)
  store %struct.page* %48, %struct.page** %10, align 8
  %49 = load %struct.page*, %struct.page** %10, align 8
  %50 = call i64 @PageUptodate(%struct.page* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %66

53:                                               ; preds = %44
  %54 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %55 = load %struct.page*, %struct.page** %10, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %59 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rbio_add_io_page(%struct.btrfs_raid_bio* %54, %struct.bio_list* %5, %struct.page* %55, i32 %56, i32 %57, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %107

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %52, %43
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %30

69:                                               ; preds = %30
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %23

73:                                               ; preds = %23
  %74 = call i32 @bio_list_size(%struct.bio_list* %5)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  br label %120

78:                                               ; preds = %73
  %79 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %80 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %79, i32 0, i32 3
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @atomic_set(i32* %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %88
  %84 = call %struct.bio* @bio_list_pop(%struct.bio_list* %5)
  store %struct.bio* %84, %struct.bio** %9, align 8
  %85 = load %struct.bio*, %struct.bio** %9, align 8
  %86 = icmp ne %struct.bio* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  br label %106

88:                                               ; preds = %83
  %89 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %90 = load %struct.bio*, %struct.bio** %9, align 8
  %91 = getelementptr inbounds %struct.bio, %struct.bio* %90, i32 0, i32 2
  store %struct.btrfs_raid_bio* %89, %struct.btrfs_raid_bio** %91, align 8
  %92 = load i32, i32* @raid_rmw_end_io, align 4
  %93 = load %struct.bio*, %struct.bio** %9, align 8
  %94 = getelementptr inbounds %struct.bio, %struct.bio* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @REQ_OP_READ, align 4
  %96 = load %struct.bio*, %struct.bio** %9, align 8
  %97 = getelementptr inbounds %struct.bio, %struct.bio* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %99 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.bio*, %struct.bio** %9, align 8
  %102 = load i32, i32* @BTRFS_WQ_ENDIO_RAID56, align 4
  %103 = call i32 @btrfs_bio_wq_end_io(i32 %100, %struct.bio* %101, i32 %102)
  %104 = load %struct.bio*, %struct.bio** %9, align 8
  %105 = call i32 @submit_bio(%struct.bio* %104)
  br label %83

106:                                              ; preds = %87
  store i32 0, i32* %2, align 4
  br label %123

107:                                              ; preds = %64, %16
  %108 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %109 = load i32, i32* @BLK_STS_IOERR, align 4
  %110 = call i32 @rbio_orig_end_io(%struct.btrfs_raid_bio* %108, i32 %109)
  br label %111

111:                                              ; preds = %114, %107
  %112 = call %struct.bio* @bio_list_pop(%struct.bio_list* %5)
  store %struct.bio* %112, %struct.bio** %9, align 8
  %113 = icmp ne %struct.bio* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.bio*, %struct.bio** %9, align 8
  %116 = call i32 @bio_put(%struct.bio* %115)
  br label %111

117:                                              ; preds = %111
  %118 = load i32, i32* @EIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %123

120:                                              ; preds = %77
  %121 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %122 = call i32 @validate_rbio_for_rmw(%struct.btrfs_raid_bio* %121)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %120, %117, %106
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local i32 @alloc_rbio_pages(%struct.btrfs_raid_bio*) #1

declare dso_local i32 @index_rbio_pages(%struct.btrfs_raid_bio*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.page* @page_in_rbio(%struct.btrfs_raid_bio*, i32, i32, i32) #1

declare dso_local %struct.page* @rbio_stripe_page(%struct.btrfs_raid_bio*, i32, i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @rbio_add_io_page(%struct.btrfs_raid_bio*, %struct.bio_list*, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @bio_list_size(%struct.bio_list*) #1

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @btrfs_bio_wq_end_io(i32, %struct.bio*, i32) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

declare dso_local i32 @rbio_orig_end_io(%struct.btrfs_raid_bio*, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @validate_rbio_for_rmw(%struct.btrfs_raid_bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
