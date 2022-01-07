; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_get_ib_list_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_get_ib_list_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i32, i32, i32, i32, i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@HS_CAPABILITY_SUPPORT_DYN_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvumi_hba*, i8**)* @mvumi_get_ib_list_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvumi_get_ib_list_entry(%struct.mvumi_hba* %0, i8** %1) #0 {
  %3 = alloca %struct.mvumi_hba*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %7 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %10 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %9, i32 0, i32 6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %8, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %19 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp uge i32 %17, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %24 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sub i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %29 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %28, i32 0, i32 6
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %34 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = xor i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %22, %2
  %38 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %39 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %38, i32 0, i32 6
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %45 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %50 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %49, i32 0, i32 6
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %48, %53
  %55 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %56 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %60 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @HS_CAPABILITY_SUPPORT_DYN_SRC, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %37
  %66 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %67 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %66, i32 0, i32 5
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = zext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = getelementptr i8, i8* %68, i64 %71
  %73 = load i8**, i8*** %4, align 8
  store i8* %72, i8** %73, align 8
  br label %86

74:                                               ; preds = %37
  %75 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %76 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %75, i32 0, i32 5
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %80 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = mul i32 %78, %81
  %83 = zext i32 %82 to i64
  %84 = getelementptr i8, i8* %77, i64 %83
  %85 = load i8**, i8*** %4, align 8
  store i8* %84, i8** %85, align 8
  br label %86

86:                                               ; preds = %74, %65
  %87 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %88 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %87, i32 0, i32 4
  %89 = call i32 @atomic_inc(i32* %88)
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
