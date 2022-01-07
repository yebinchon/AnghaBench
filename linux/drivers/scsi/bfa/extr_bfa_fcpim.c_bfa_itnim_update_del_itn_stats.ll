; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_update_del_itn_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_update_del_itn_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_itnim_s = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bfa_fcpim_s = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_itnim_s*)* @bfa_itnim_update_del_itn_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_itnim_update_del_itn_stats(%struct.bfa_itnim_s* %0) #0 {
  %2 = alloca %struct.bfa_itnim_s*, align 8
  %3 = alloca %struct.bfa_fcpim_s*, align 8
  store %struct.bfa_itnim_s* %0, %struct.bfa_itnim_s** %2, align 8
  %4 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.bfa_fcpim_s* @BFA_FCPIM(i32 %6)
  store %struct.bfa_fcpim_s* %7, %struct.bfa_fcpim_s** %3, align 8
  %8 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %9 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %11
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %14, align 4
  %19 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %20 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %3, align 8
  %24 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %22
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 4
  %30 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %31 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %3, align 8
  %35 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %33
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %42 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %44
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  %52 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %53 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %3, align 8
  %57 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %55
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %64 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %3, align 8
  %68 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %66
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %75 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %3, align 8
  %79 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %77
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 4
  %85 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %86 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %3, align 8
  %90 = getelementptr inbounds %struct.bfa_fcpim_s, %struct.bfa_fcpim_s* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %88
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 4
  ret void
}

declare dso_local %struct.bfa_fcpim_s* @BFA_FCPIM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
