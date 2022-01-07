; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c___raid56_parity_recover.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_raid56.c___raid56_parity_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_raid_bio = type { i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bio_list = type { i32 }
%struct.bio = type { i32, i32, %struct.btrfs_raid_bio* }
%struct.page = type { i32 }

@raid_recover_end_io = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@BTRFS_WQ_ENDIO_RAID56 = common dso_local global i32 0, align 4
@BTRFS_RBIO_READ_REBUILD = common dso_local global i64 0, align 8
@BTRFS_RBIO_REBUILD_MISSING = common dso_local global i64 0, align 8
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_raid_bio*)* @__raid56_parity_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__raid56_parity_recover(%struct.btrfs_raid_bio* %0) #0 {
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
  br label %130

17:                                               ; preds = %1
  %18 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %19 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %18, i32 0, i32 8
  %20 = call i32 @atomic_set(i32* %19, i32 0)
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %79, %17
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %24 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %82

27:                                               ; preds = %21
  %28 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %29 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %35 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33, %27
  %40 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %41 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %40, i32 0, i32 8
  %42 = call i32 @atomic_inc(i32* %41)
  br label %79

43:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %75, %43
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %47 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %78

50:                                               ; preds = %44
  %51 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call %struct.page* @rbio_stripe_page(%struct.btrfs_raid_bio* %51, i32 %52, i32 %53)
  store %struct.page* %54, %struct.page** %10, align 8
  %55 = load %struct.page*, %struct.page** %10, align 8
  %56 = call i64 @PageUptodate(%struct.page* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %75

59:                                               ; preds = %50
  %60 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %61 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call %struct.page* @rbio_stripe_page(%struct.btrfs_raid_bio* %61, i32 %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %68 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @rbio_add_io_page(%struct.btrfs_raid_bio* %60, %struct.bio_list* %5, %struct.page* %64, i32 %65, i32 %66, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  br label %130

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %58
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %44

78:                                               ; preds = %44
  br label %79

79:                                               ; preds = %78, %39
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %21

82:                                               ; preds = %21
  %83 = call i32 @bio_list_size(%struct.bio_list* %5)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %82
  %87 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %88 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %87, i32 0, i32 8
  %89 = call i64 @atomic_read(i32* %88)
  %90 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %91 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %90, i32 0, i32 7
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp sle i64 %89, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %98 = call i32 @__raid_recover_end_io(%struct.btrfs_raid_bio* %97)
  br label %129

99:                                               ; preds = %86
  br label %130

100:                                              ; preds = %82
  %101 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %102 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %101, i32 0, i32 6
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @atomic_set(i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %100, %110
  %106 = call %struct.bio* @bio_list_pop(%struct.bio_list* %5)
  store %struct.bio* %106, %struct.bio** %9, align 8
  %107 = load %struct.bio*, %struct.bio** %9, align 8
  %108 = icmp ne %struct.bio* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  br label %128

110:                                              ; preds = %105
  %111 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %112 = load %struct.bio*, %struct.bio** %9, align 8
  %113 = getelementptr inbounds %struct.bio, %struct.bio* %112, i32 0, i32 2
  store %struct.btrfs_raid_bio* %111, %struct.btrfs_raid_bio** %113, align 8
  %114 = load i32, i32* @raid_recover_end_io, align 4
  %115 = load %struct.bio*, %struct.bio** %9, align 8
  %116 = getelementptr inbounds %struct.bio, %struct.bio* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @REQ_OP_READ, align 4
  %118 = load %struct.bio*, %struct.bio** %9, align 8
  %119 = getelementptr inbounds %struct.bio, %struct.bio* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %121 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.bio*, %struct.bio** %9, align 8
  %124 = load i32, i32* @BTRFS_WQ_ENDIO_RAID56, align 4
  %125 = call i32 @btrfs_bio_wq_end_io(i32 %122, %struct.bio* %123, i32 %124)
  %126 = load %struct.bio*, %struct.bio** %9, align 8
  %127 = call i32 @submit_bio(%struct.bio* %126)
  br label %105

128:                                              ; preds = %109
  br label %129

129:                                              ; preds = %128, %96
  store i32 0, i32* %2, align 4
  br label %156

130:                                              ; preds = %99, %73, %16
  %131 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %132 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @BTRFS_RBIO_READ_REBUILD, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %142, label %136

136:                                              ; preds = %130
  %137 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %138 = getelementptr inbounds %struct.btrfs_raid_bio, %struct.btrfs_raid_bio* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @BTRFS_RBIO_REBUILD_MISSING, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %136, %130
  %143 = load %struct.btrfs_raid_bio*, %struct.btrfs_raid_bio** %3, align 8
  %144 = load i32, i32* @BLK_STS_IOERR, align 4
  %145 = call i32 @rbio_orig_end_io(%struct.btrfs_raid_bio* %143, i32 %144)
  br label %146

146:                                              ; preds = %142, %136
  br label %147

147:                                              ; preds = %150, %146
  %148 = call %struct.bio* @bio_list_pop(%struct.bio_list* %5)
  store %struct.bio* %148, %struct.bio** %9, align 8
  %149 = icmp ne %struct.bio* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.bio*, %struct.bio** %9, align 8
  %152 = call i32 @bio_put(%struct.bio* %151)
  br label %147

153:                                              ; preds = %147
  %154 = load i32, i32* @EIO, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %153, %129
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local i32 @alloc_rbio_pages(%struct.btrfs_raid_bio*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.page* @rbio_stripe_page(%struct.btrfs_raid_bio*, i32, i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @rbio_add_io_page(%struct.btrfs_raid_bio*, %struct.bio_list*, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @bio_list_size(%struct.bio_list*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @__raid_recover_end_io(%struct.btrfs_raid_bio*) #1

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @btrfs_bio_wq_end_io(i32, %struct.bio*, i32) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

declare dso_local i32 @rbio_orig_end_io(%struct.btrfs_raid_bio*, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
