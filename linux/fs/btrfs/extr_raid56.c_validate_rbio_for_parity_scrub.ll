; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_validate_rbio_for_parity_scrub.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_validate_rbio_for_parity_scrub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_raid_bio*)* @validate_rbio_for_parity_scrub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_rbio_for_parity_scrub(%struct.btrfs_raid_bio* %0) #0 {
  %2 = alloca %struct.btrfs_raid_bio*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio** %2, align 8
  %5 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %6 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %5, i32 0, i32 4
  %7 = call i64 @atomic_read(i32* %6)
  %8 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %9 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %7, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %100

15:                                               ; preds = %1
  %16 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %17 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %22 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %96

25:                                               ; preds = %20, %15
  store i32 0, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  %26 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %27 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %28 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @is_data_stripe(%struct.btrfs_raid_bio* %26, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %47

35:                                               ; preds = %25
  %36 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %37 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @is_parity_stripe(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %43 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %35
  br label %47

47:                                               ; preds = %46, %32
  %48 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %49 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %50 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @is_data_stripe(%struct.btrfs_raid_bio* %48, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %69

57:                                               ; preds = %47
  %58 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %59 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @is_parity_stripe(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %65 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %63, %57
  br label %69

69:                                               ; preds = %68, %54
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %73 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %76, 1
  %78 = icmp sgt i64 %71, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %100

80:                                               ; preds = %69
  %81 = load i32, i32* %3, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %85 = call i32 @finish_parity_scrub(%struct.btrfs_raid_bio* %84, i32 0)
  br label %104

86:                                               ; preds = %80
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %89 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %100

93:                                               ; preds = %86
  %94 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %95 = call i32 @__raid_recover_end_io(%struct.btrfs_raid_bio* %94)
  br label %99

96:                                               ; preds = %20
  %97 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %98 = call i32 @finish_parity_scrub(%struct.btrfs_raid_bio* %97, i32 1)
  br label %99

99:                                               ; preds = %96, %93
  br label %104

100:                                              ; preds = %92, %79, %14
  %101 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %2, align 8
  %102 = load i32, i32* @BLK_STS_IOERR, align 4
  %103 = call i32 @rbio_orig_end_io(%struct.btrfs_raid_bio* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %99, %83
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @is_data_stripe(%struct.btrfs_raid_bio*, i64) #1

declare dso_local i64 @is_parity_stripe(i64) #1

declare dso_local i32 @finish_parity_scrub(%struct.btrfs_raid_bio*, i32) #1

declare dso_local i32 @__raid_recover_end_io(%struct.btrfs_raid_bio*) #1

declare dso_local i32 @rbio_orig_end_io(%struct.btrfs_raid_bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
