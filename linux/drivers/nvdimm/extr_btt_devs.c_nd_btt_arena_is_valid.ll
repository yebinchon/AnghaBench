; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt_devs.c_nd_btt_arena_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt_devs.c_nd_btt_arena_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_btt = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.btt_sb = type { i32, i32, i32, i32 }
%struct.nd_gen_sb = type { i32 }

@BTT_SIG = common dso_local global i32* null, align 8
@BTT_SIG_LEN = common dso_local global i32 0, align 4
@IB_FLAG_ERROR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Found arena with an error flag\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd_btt_arena_is_valid(%struct.nd_btt* %0, %struct.btt_sb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nd_btt*, align 8
  %5 = alloca %struct.btt_sb*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.nd_btt* %0, %struct.nd_btt** %4, align 8
  store %struct.btt_sb* %1, %struct.btt_sb** %5, align 8
  %8 = load %struct.nd_btt*, %struct.nd_btt** %4, align 8
  %9 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32* @nd_dev_to_uuid(i32* %11)
  store i32* %12, i32** %6, align 8
  %13 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %14 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** @BTT_SIG, align 8
  %17 = load i32, i32* @BTT_SIG_LEN, align 4
  %18 = call i64 @memcmp(i32 %15, i32* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

21:                                               ; preds = %2
  %22 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %23 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %22, i32 0, i32 2
  %24 = call i32 @guid_is_null(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %28 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @memcmp(i32 %29, i32* %30, i32 16)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %65

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %37 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le64_to_cpu(i32 %38)
  store i64 %39, i64* %7, align 8
  %40 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %41 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %44 = bitcast %struct.btt_sb* %43 to %struct.nd_gen_sb*
  %45 = call i64 @nd_sb_checksum(%struct.nd_gen_sb* %44)
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %65

48:                                               ; preds = %35
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @cpu_to_le64(i64 %49)
  %51 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %52 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.btt_sb*, %struct.btt_sb** %5, align 8
  %54 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  %57 = load i32, i32* @IB_FLAG_ERROR_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  %61 = load %struct.nd_btt*, %struct.nd_btt** %4, align 8
  %62 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %61, i32 0, i32 0
  %63 = call i32 @dev_info(i32* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %48
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %47, %33, %20
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32* @nd_dev_to_uuid(i32*) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @guid_is_null(i32*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @nd_sb_checksum(%struct.nd_gen_sb*) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
