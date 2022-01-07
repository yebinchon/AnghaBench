; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_rbio_add_io_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c_rbio_add_io_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.btrfs_bio_stripe* }
%struct.btrfs_bio_stripe = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.bio_list = type { %struct.bio* }
%struct.bio = type { i64, i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_raid_bio*, %struct.bio_list*, %struct.page*, i32, i64, i64)* @rbio_add_io_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbio_add_io_page(%struct.btrfs_raid_bio* %0, %struct.bio_list* %1, %struct.page* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_raid_bio*, align 8
  %9 = alloca %struct.bio_list*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.bio*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.bio*, align 8
  %18 = alloca %struct.btrfs_bio_stripe*, align 8
  %19 = alloca i32, align 4
  store %struct.btrfs_raid_bio* %0, %struct.btrfs_raid_bio** %8, align 8
  store %struct.bio_list* %1, %struct.bio_list** %9, align 8
  store %struct.page* %2, %struct.page** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = load %struct.bio_list*, %struct.bio_list** %9, align 8
  %21 = getelementptr inbounds %struct.bio_list, %struct.bio_list* %20, i32 0, i32 0
  %22 = load %struct.bio*, %struct.bio** %21, align 8
  store %struct.bio* %22, %struct.bio** %14, align 8
  store i32 0, i32* %15, align 4
  %23 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %8, align 8
  %24 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.btrfs_bio_stripe*, %struct.btrfs_bio_stripe** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.btrfs_bio_stripe, %struct.btrfs_bio_stripe* %27, i64 %29
  store %struct.btrfs_bio_stripe* %30, %struct.btrfs_bio_stripe** %18, align 8
  %31 = load %struct.btrfs_bio_stripe*, %struct.btrfs_bio_stripe** %18, align 8
  %32 = getelementptr inbounds %struct.btrfs_bio_stripe, %struct.btrfs_bio_stripe* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @PAGE_SHIFT, align 8
  %37 = shl i64 %35, %36
  %38 = add i64 %34, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %19, align 4
  %40 = load %struct.btrfs_bio_stripe*, %struct.btrfs_bio_stripe** %18, align 8
  %41 = getelementptr inbounds %struct.btrfs_bio_stripe, %struct.btrfs_bio_stripe* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = icmp ne %struct.TYPE_8__* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %6
  %47 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @fail_rbio_index(%struct.btrfs_raid_bio* %47, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %150

50:                                               ; preds = %6
  %51 = load %struct.bio*, %struct.bio** %14, align 8
  %52 = icmp ne %struct.bio* %51, null
  br i1 %52, label %53, label %117

53:                                               ; preds = %50
  %54 = load %struct.bio*, %struct.bio** %14, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = shl i32 %57, 9
  store i32 %58, i32* %15, align 4
  %59 = load %struct.bio*, %struct.bio** %14, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %19, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %116

70:                                               ; preds = %53
  %71 = load %struct.btrfs_bio_stripe*, %struct.btrfs_bio_stripe** %18, align 8
  %72 = getelementptr inbounds %struct.btrfs_bio_stripe, %struct.btrfs_bio_stripe* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = icmp ne %struct.TYPE_8__* %75, null
  br i1 %76, label %77, label %116

77:                                               ; preds = %70
  %78 = load %struct.bio*, %struct.bio** %14, align 8
  %79 = getelementptr inbounds %struct.bio, %struct.bio* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %116, label %82

82:                                               ; preds = %77
  %83 = load %struct.bio*, %struct.bio** %14, align 8
  %84 = getelementptr inbounds %struct.bio, %struct.bio* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.btrfs_bio_stripe*, %struct.btrfs_bio_stripe** %18, align 8
  %87 = getelementptr inbounds %struct.btrfs_bio_stripe, %struct.btrfs_bio_stripe* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %85, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %82
  %95 = load %struct.bio*, %struct.bio** %14, align 8
  %96 = getelementptr inbounds %struct.bio, %struct.bio* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.btrfs_bio_stripe*, %struct.btrfs_bio_stripe** %18, align 8
  %99 = getelementptr inbounds %struct.btrfs_bio_stripe, %struct.btrfs_bio_stripe* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %97, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %94
  %107 = load %struct.bio*, %struct.bio** %14, align 8
  %108 = load %struct.page*, %struct.page** %10, align 8
  %109 = load i32, i32* @PAGE_SIZE, align 4
  %110 = call i32 @bio_add_page(%struct.bio* %107, %struct.page* %108, i32 %109, i32 0)
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* @PAGE_SIZE, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  store i32 0, i32* %7, align 4
  br label %150

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %94, %82, %77, %70, %53
  br label %117

117:                                              ; preds = %116, %50
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* @PAGE_SHIFT, align 8
  %120 = lshr i64 %118, %119
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %124

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123, %122
  %125 = phi i64 [ %120, %122 ], [ 1, %123 ]
  %126 = trunc i64 %125 to i32
  %127 = call %struct.bio* @btrfs_io_bio_alloc(i32 %126)
  store %struct.bio* %127, %struct.bio** %17, align 8
  %128 = load %struct.bio*, %struct.bio** %17, align 8
  %129 = getelementptr inbounds %struct.bio, %struct.bio* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  %131 = load %struct.bio*, %struct.bio** %17, align 8
  %132 = load %struct.btrfs_bio_stripe*, %struct.btrfs_bio_stripe** %18, align 8
  %133 = getelementptr inbounds %struct.btrfs_bio_stripe, %struct.btrfs_bio_stripe* %132, i32 0, i32 1
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = call i32 @bio_set_dev(%struct.bio* %131, %struct.TYPE_8__* %136)
  %138 = load i32, i32* %19, align 4
  %139 = ashr i32 %138, 9
  %140 = load %struct.bio*, %struct.bio** %17, align 8
  %141 = getelementptr inbounds %struct.bio, %struct.bio* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  %143 = load %struct.bio*, %struct.bio** %17, align 8
  %144 = load %struct.page*, %struct.page** %10, align 8
  %145 = load i32, i32* @PAGE_SIZE, align 4
  %146 = call i32 @bio_add_page(%struct.bio* %143, %struct.page* %144, i32 %145, i32 0)
  %147 = load %struct.bio_list*, %struct.bio_list** %9, align 8
  %148 = load %struct.bio*, %struct.bio** %17, align 8
  %149 = call i32 @bio_list_add(%struct.bio_list* %147, %struct.bio* %148)
  store i32 0, i32* %7, align 4
  br label %150

150:                                              ; preds = %124, %114, %46
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local i32 @fail_rbio_index(%struct.btrfs_raid_bio*, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

declare dso_local %struct.bio* @btrfs_io_bio_alloc(i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, %struct.TYPE_8__*) #1

declare dso_local i32 @bio_list_add(%struct.bio_list*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
