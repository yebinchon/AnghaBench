; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_fib_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_commsup.c_aac_fib_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { i32, i32, %struct.hw_fib* }
%struct.hw_fib = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@FIB_CONTEXT_FLAG_NATIVE_HBA = common dso_local global i32 0, align 4
@FIB_MAGIC = common dso_local global i64 0, align 8
@FIB_MAGIC2 = common dso_local global i64 0, align 8
@FIB_MAGIC2_64 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SentFromHost = common dso_local global i32 0, align 4
@AdapterProcessed = common dso_local global i32 0, align 4
@HostOwned = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_fib_complete(%struct.fib* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fib*, align 8
  %4 = alloca %struct.hw_fib*, align 8
  store %struct.fib* %0, %struct.fib** %3, align 8
  %5 = load %struct.fib*, %struct.fib** %3, align 8
  %6 = getelementptr inbounds %struct.fib, %struct.fib* %5, i32 0, i32 2
  %7 = load %struct.hw_fib*, %struct.hw_fib** %6, align 8
  store %struct.hw_fib* %7, %struct.hw_fib** %4, align 8
  %8 = load %struct.fib*, %struct.fib** %3, align 8
  %9 = getelementptr inbounds %struct.fib, %struct.fib* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @FIB_CONTEXT_FLAG_NATIVE_HBA, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.fib*, %struct.fib** %3, align 8
  %16 = call i32 @fib_dealloc(%struct.fib* %15)
  store i32 0, i32* %2, align 4
  br label %103

17:                                               ; preds = %1
  %18 = load %struct.hw_fib*, %struct.hw_fib** %4, align 8
  %19 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load %struct.fib*, %struct.fib** %3, align 8
  %25 = getelementptr inbounds %struct.fib, %struct.fib* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %17
  store i32 0, i32* %2, align 4
  br label %103

29:                                               ; preds = %23
  %30 = load %struct.hw_fib*, %struct.hw_fib** %4, align 8
  %31 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FIB_MAGIC, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %29
  %37 = load %struct.hw_fib*, %struct.hw_fib** %4, align 8
  %38 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FIB_MAGIC2, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.hw_fib*, %struct.hw_fib** %4, align 8
  %45 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FIB_MAGIC2_64, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %103

53:                                               ; preds = %43, %36, %29
  %54 = load %struct.hw_fib*, %struct.hw_fib** %4, align 8
  %55 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SentFromHost, align 4
  %59 = call i32 @cpu_to_le32(i32 %58)
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %53
  %63 = load %struct.hw_fib*, %struct.hw_fib** %4, align 8
  %64 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @AdapterProcessed, align 4
  %68 = call i32 @cpu_to_le32(i32 %67)
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load %struct.fib*, %struct.fib** %3, align 8
  %73 = call i32 @fib_dealloc(%struct.fib* %72)
  br label %102

74:                                               ; preds = %62, %53
  %75 = load %struct.hw_fib*, %struct.hw_fib** %4, align 8
  %76 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @SentFromHost, align 4
  %80 = call i32 @cpu_to_le32(i32 %79)
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load %struct.fib*, %struct.fib** %3, align 8
  %85 = call i32 @fib_dealloc(%struct.fib* %84)
  br label %101

86:                                               ; preds = %74
  %87 = load %struct.hw_fib*, %struct.hw_fib** %4, align 8
  %88 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @HostOwned, align 4
  %92 = call i32 @cpu_to_le32(i32 %91)
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load %struct.fib*, %struct.fib** %3, align 8
  %97 = call i32 @fib_dealloc(%struct.fib* %96)
  br label %100

98:                                               ; preds = %86
  %99 = call i32 (...) @BUG()
  br label %100

100:                                              ; preds = %98, %95
  br label %101

101:                                              ; preds = %100, %83
  br label %102

102:                                              ; preds = %101, %71
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %50, %28, %14
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @fib_dealloc(%struct.fib*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
