; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_init.c_mvs_init_sas_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mvsas/extr_mv_init.c_mvs_init_sas_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@SAS_ADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*)* @mvs_init_sas_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_init_sas_add(%struct.mvs_info* %0) #0 {
  %2 = alloca %struct.mvs_info*, align 8
  %3 = alloca i64, align 8
  store %struct.mvs_info* %0, %struct.mvs_info** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %34, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.mvs_info*, %struct.mvs_info** %2, align 8
  %7 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %5, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %4
  %13 = load %struct.mvs_info*, %struct.mvs_info** %2, align 8
  %14 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 296419328, i32* %18, align 4
  %19 = load %struct.mvs_info*, %struct.mvs_info** %2, align 8
  %20 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to i64*
  %26 = load i64, i64* %25, align 4
  %27 = call i32 @cpu_to_be64(i64 %26)
  %28 = load %struct.mvs_info*, %struct.mvs_info** %2, align 8
  %29 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %27, i32* %33, align 4
  br label %34

34:                                               ; preds = %12
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %4

37:                                               ; preds = %4
  %38 = load %struct.mvs_info*, %struct.mvs_info** %2, align 8
  %39 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mvs_info*, %struct.mvs_info** %2, align 8
  %42 = getelementptr inbounds %struct.mvs_info, %struct.mvs_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %47 = call i32 @memcpy(i32 %40, i32* %45, i32 %46)
  ret void
}

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
