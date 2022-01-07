; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_bh_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_check-integrity.c_btrfsic_bh_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 (%struct.buffer_head*, i32)*, i64 }
%struct.btrfsic_block = type { i32, i32, i32, %struct.TYPE_3__, i64, i64, i32, i32, %struct.btrfsic_dev_state*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.buffer_head*, i32)* }
%struct.btrfsic_dev_state = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@BTRFSIC_PRINT_MASK_END_IO_BIO_BH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"bh_end_io(error=%d) for %c @%llu (%s/%llu/%d)\0A\00", align 1
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"bh_end_io() new %s flush_gen=%llu\0A\00", align 1
@REQ_FUA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*, i32)* @btrfsic_bh_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfsic_bh_end_io(%struct.buffer_head* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfsic_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfsic_dev_state*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.btrfsic_block*
  store %struct.btrfsic_block* %11, %struct.btrfsic_block** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load %struct.btrfsic_block*, %struct.btrfsic_block** %5, align 8
  %17 = icmp eq %struct.btrfsic_block* null, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.btrfsic_block*, %struct.btrfsic_block** %5, align 8
  %21 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %20, i32 0, i32 8
  %22 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %21, align 8
  store %struct.btrfsic_dev_state* %22, %struct.btrfsic_dev_state** %7, align 8
  %23 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %7, align 8
  %24 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BTRFSIC_PRINT_MASK_END_IO_BIO_BH, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %7, align 8
  %34 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.btrfsic_block*, %struct.btrfsic_block** %5, align 8
  %37 = call i32 @btrfsic_get_block_type(%struct.TYPE_4__* %35, %struct.btrfsic_block* %36)
  %38 = load %struct.btrfsic_block*, %struct.btrfsic_block** %5, align 8
  %39 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.btrfsic_block*, %struct.btrfsic_block** %5, align 8
  %42 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %41, i32 0, i32 8
  %43 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %42, align 8
  %44 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.btrfsic_block*, %struct.btrfsic_block** %5, align 8
  %47 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.btrfsic_block*, %struct.btrfsic_block** %5, align 8
  %50 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %37, i32 %40, i32 %45, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %31, %2
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.btrfsic_block*, %struct.btrfsic_block** %5, align 8
  %56 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.btrfsic_block*, %struct.btrfsic_block** %5, align 8
  %58 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @REQ_PREFLUSH, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %53
  %64 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %7, align 8
  %65 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %7, align 8
  %69 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @BTRFSIC_PRINT_MASK_END_IO_BIO_BH, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %63
  %77 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %7, align 8
  %78 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.btrfsic_dev_state*, %struct.btrfsic_dev_state** %7, align 8
  %81 = getelementptr inbounds %struct.btrfsic_dev_state, %struct.btrfsic_dev_state* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %76, %63
  br label %85

85:                                               ; preds = %84, %53
  %86 = load %struct.btrfsic_block*, %struct.btrfsic_block** %5, align 8
  %87 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @REQ_FUA, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load %struct.btrfsic_block*, %struct.btrfsic_block** %5, align 8
  %94 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %93, i32 0, i32 5
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %92, %85
  %96 = load %struct.btrfsic_block*, %struct.btrfsic_block** %5, align 8
  %97 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %100 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load %struct.btrfsic_block*, %struct.btrfsic_block** %5, align 8
  %102 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32 (%struct.buffer_head*, i32)*, i32 (%struct.buffer_head*, i32)** %103, align 8
  %105 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %106 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %105, i32 0, i32 0
  store i32 (%struct.buffer_head*, i32)* %104, i32 (%struct.buffer_head*, i32)** %106, align 8
  %107 = load %struct.btrfsic_block*, %struct.btrfsic_block** %5, align 8
  %108 = getelementptr inbounds %struct.btrfsic_block, %struct.btrfsic_block* %107, i32 0, i32 2
  store i32 1, i32* %108, align 8
  %109 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %110 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %109, i32 0, i32 0
  %111 = load i32 (%struct.buffer_head*, i32)*, i32 (%struct.buffer_head*, i32)** %110, align 8
  %112 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 %111(%struct.buffer_head* %112, i32 %113)
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
