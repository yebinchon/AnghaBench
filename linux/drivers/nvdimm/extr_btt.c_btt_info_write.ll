; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_btt_info_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt.c_btt_info_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arena_info = type { i32, i32 }
%struct.btt_sb = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"arena->infooff: %#llx is unaligned\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"arena->info2off: %#llx is unaligned\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arena_info*, %struct.btt_sb*)* @btt_info_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btt_info_write(%struct.arena_info* %0, %struct.btt_sb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arena_info*, align 8
  %5 = alloca %struct.btt_sb*, align 8
  %6 = alloca i32, align 4
  store %struct.arena_info* %0, %struct.arena_info** %4, align 8
  store %struct.btt_sb* %1, %struct.btt_sb** %5, align 8
  %7 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %8 = call i32 @to_dev(%struct.arena_info* %7)
  %9 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %10 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @IS_ALIGNED(i32 %11, i32 512)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %17 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_WARN_ONCE(i32 %8, i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %21 = call i32 @to_dev(%struct.arena_info* %20)
  %22 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %23 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @IS_ALIGNED(i32 %24, i32 512)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %30 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_WARN_ONCE(i32 %21, i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %34 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %35 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %38 = call i32 @arena_write_bytes(%struct.arena_info* %33, i32 %36, %struct.btt_sb* %37, i32 4, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %50

43:                                               ; preds = %2
  %44 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %45 = load %struct.arena_info*, %struct.arena_info** %4, align 8
  %46 = getelementptr inbounds %struct.arena_info, %struct.arena_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %49 = call i32 @arena_write_bytes(%struct.arena_info* %44, i32 %47, %struct.btt_sb* %48, i32 4, i32 0)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %43, %41
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @dev_WARN_ONCE(i32, i32, i8*, i32) #1

declare dso_local i32 @to_dev(%struct.arena_info*) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @arena_write_bytes(%struct.arena_info*, i32, %struct.btt_sb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
