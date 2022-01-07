; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_bio_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_bio_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 (%struct.bio*)*, i64, i64 }
%struct.btrfsic_block = type { i32, i32, i32, i64, %struct.btrfsic_block*, i32, i32, i32, %struct.btrfsic_dev_state*, %struct.TYPE_3__, i64 }
%struct.btrfsic_dev_state = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.bio.0*)* }
%struct.bio.0 = type opaque

@BTRFSIC_PRINT_MASK_END_IO_BIO_BH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"bio_end_io(err=%d) for %c @%llu (%s/%llu/%d)\0A\00", align 1
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"bio_end_io() new %s flush_gen=%llu\0A\00", align 1
@REQ_FUA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @btrfsic_bio_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfsic_bio_end_io(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.btrfsic_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfsic_block*, align 8
  %6 = alloca %struct.btrfsic_dev_state*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %7 = load %struct.bio*, %struct.bio** %2, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.btrfsic_block*
  store %struct.btrfsic_block* %10, %struct.btrfsic_block** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.bio*, %struct.bio** %2, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.btrfsic_block*, %struct.btrfsic_block** %3, align 8
  %18 = icmp eq %struct.btrfsic_block* null, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.btrfsic_block*, %struct.btrfsic_block** %3, align 8
  %22 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %21, i32 0, i32 10
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.bio*, %struct.bio** %2, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.btrfsic_block*, %struct.btrfsic_block** %3, align 8
  %27 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %26, i32 0, i32 9
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.bio.0*)*, i32 (%struct.bio.0*)** %28, align 8
  %30 = bitcast i32 (%struct.bio.0*)* %29 to i32 (%struct.bio*)*
  %31 = load %struct.bio*, %struct.bio** %2, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  store i32 (%struct.bio*)* %30, i32 (%struct.bio*)** %32, align 8
  br label %33

33:                                               ; preds = %117, %16
  %34 = load %struct.btrfsic_block*, %struct.btrfsic_block** %3, align 8
  %35 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %34, i32 0, i32 8
  %36 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %35, align 8
  store %struct.btrfsic_dev_state* %36, %struct.btrfsic_dev_state** %6, align 8
  %37 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %6, align 8
  %38 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BTRFSIC_PRINT_MASK_END_IO_BIO_BH, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %33
  %46 = load %struct.bio*, %struct.bio** %2, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %6, align 8
  %51 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load %struct.btrfsic_block*, %struct.btrfsic_block** %3, align 8
  %54 = call i32 @btrfsic_get_block_type(%struct.TYPE_4__* %52, %struct.btrfsic_block* %53)
  %55 = load %struct.btrfsic_block*, %struct.btrfsic_block** %3, align 8
  %56 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %6, align 8
  %59 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.btrfsic_block*, %struct.btrfsic_block** %3, align 8
  %62 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.btrfsic_block*, %struct.btrfsic_block** %3, align 8
  %65 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %45, %33
  %69 = load %struct.btrfsic_block*, %struct.btrfsic_block** %3, align 8
  %70 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %69, i32 0, i32 4
  %71 = load %struct.btrfsic_block*, %struct.btrfsic_block** %70, align 8
  store %struct.btrfsic_block* %71, %struct.btrfsic_block** %5, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.btrfsic_block*, %struct.btrfsic_block** %3, align 8
  %74 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.btrfsic_block*, %struct.btrfsic_block** %3, align 8
  %76 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @REQ_PREFLUSH, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %68
  %82 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %6, align 8
  %83 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %6, align 8
  %87 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @BTRFSIC_PRINT_MASK_END_IO_BIO_BH, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %81
  %95 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %6, align 8
  %96 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %6, align 8
  %99 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %94, %81
  br label %103

103:                                              ; preds = %102, %68
  %104 = load %struct.btrfsic_block*, %struct.btrfsic_block** %3, align 8
  %105 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @REQ_FUA, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load %struct.btrfsic_block*, %struct.btrfsic_block** %3, align 8
  %112 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %111, i32 0, i32 3
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %110, %103
  %114 = load %struct.btrfsic_block*, %struct.btrfsic_block** %3, align 8
  %115 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %114, i32 0, i32 2
  store i32 1, i32* %115, align 8
  %116 = load %struct.btrfsic_block*, %struct.btrfsic_block** %5, align 8
  store %struct.btrfsic_block* %116, %struct.btrfsic_block** %3, align 8
  br label %117

117:                                              ; preds = %113
  %118 = load %struct.btrfsic_block*, %struct.btrfsic_block** %3, align 8
  %119 = icmp ne %struct.btrfsic_block* null, %118
  br i1 %119, label %33, label %120

120:                                              ; preds = %117
  %121 = load %struct.bio*, %struct.bio** %2, align 8
  %122 = getelementptr inbounds %struct.bio, %struct.bio* %121, i32 0, i32 0
  %123 = load i32 (%struct.bio*)*, i32 (%struct.bio*)** %122, align 8
  %124 = load %struct.bio*, %struct.bio** %2, align 8
  %125 = call i32 %123(%struct.bio* %124)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, ...) #1

declare dso_local i32 @btrfsic_get_block_type(%struct.TYPE_4__*, %struct.btrfsic_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
