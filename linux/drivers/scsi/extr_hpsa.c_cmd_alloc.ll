; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_cmd_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_cmd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandList = type { i32*, i32 }
%struct.ctlr_info = type { i64, %struct.CommandList* }

@HPSA_NRESERVED_CMDS = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.CommandList* (%struct.ctlr_info*)* @cmd_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.CommandList* @cmd_alloc(%struct.ctlr_info* %0) #0 {
  %2 = alloca %struct.ctlr_info*, align 8
  %3 = alloca %struct.CommandList*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %2, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %36, %20, %1
  %8 = load %struct.ctlr_info*, %struct.ctlr_info** %2, align 8
  %9 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @HPSA_NRESERVED_CMDS, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @find_next_zero_bit(i64 %10, i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @HPSA_NRESERVED_CMDS, align 4
  %16 = icmp sge i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %7

21:                                               ; preds = %7
  %22 = load %struct.ctlr_info*, %struct.ctlr_info** %2, align 8
  %23 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %22, i32 0, i32 1
  %24 = load %struct.CommandList*, %struct.CommandList** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %24, i64 %26
  store %struct.CommandList* %27, %struct.CommandList** %3, align 8
  %28 = load %struct.CommandList*, %struct.CommandList** %3, align 8
  %29 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %28, i32 0, i32 1
  %30 = call i32 @atomic_inc_return(i32* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %21
  %37 = load %struct.ctlr_info*, %struct.ctlr_info** %2, align 8
  %38 = load %struct.CommandList*, %struct.CommandList** %3, align 8
  %39 = call i32 @cmd_free(%struct.ctlr_info* %37, %struct.CommandList* %38)
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* @HPSA_NRESERVED_CMDS, align 4
  %43 = srem i32 %41, %42
  store i32 %43, i32* %6, align 4
  br label %7

44:                                               ; preds = %21
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @BITS_PER_LONG, align 4
  %47 = sub nsw i32 %46, 1
  %48 = and i32 %45, %47
  %49 = load %struct.ctlr_info*, %struct.ctlr_info** %2, align 8
  %50 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @BITS_PER_LONG, align 4
  %54 = sdiv i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %51, %55
  %57 = call i32 @set_bit(i32 %48, i64 %56)
  br label %58

58:                                               ; preds = %44
  %59 = load %struct.ctlr_info*, %struct.ctlr_info** %2, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.CommandList*, %struct.CommandList** %3, align 8
  %62 = call i32 @hpsa_cmd_partial_init(%struct.ctlr_info* %59, i32 %60, %struct.CommandList* %61)
  %63 = load %struct.CommandList*, %struct.CommandList** %3, align 8
  %64 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  %65 = load %struct.CommandList*, %struct.CommandList** %3, align 8
  ret %struct.CommandList* %65
}

declare dso_local i32 @find_next_zero_bit(i64, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @cmd_free(%struct.ctlr_info*, %struct.CommandList*) #1

declare dso_local i32 @set_bit(i32, i64) #1

declare dso_local i32 @hpsa_cmd_partial_init(%struct.ctlr_info*, i32, %struct.CommandList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
