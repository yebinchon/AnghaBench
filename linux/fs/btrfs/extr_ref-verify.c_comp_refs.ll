; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ref-verify.c_comp_refs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ref-verify.c_comp_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_entry = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_entry*, %struct.ref_entry*)* @comp_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_refs(%struct.ref_entry* %0, %struct.ref_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_entry*, align 8
  %5 = alloca %struct.ref_entry*, align 8
  store %struct.ref_entry* %0, %struct.ref_entry** %4, align 8
  store %struct.ref_entry* %1, %struct.ref_entry** %5, align 8
  %6 = load %struct.ref_entry*, %struct.ref_entry** %4, align 8
  %7 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ref_entry*, %struct.ref_entry** %5, align 8
  %10 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %78

14:                                               ; preds = %2
  %15 = load %struct.ref_entry*, %struct.ref_entry** %4, align 8
  %16 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ref_entry*, %struct.ref_entry** %5, align 8
  %19 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %78

23:                                               ; preds = %14
  %24 = load %struct.ref_entry*, %struct.ref_entry** %4, align 8
  %25 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ref_entry*, %struct.ref_entry** %5, align 8
  %28 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %78

32:                                               ; preds = %23
  %33 = load %struct.ref_entry*, %struct.ref_entry** %4, align 8
  %34 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ref_entry*, %struct.ref_entry** %5, align 8
  %37 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %78

41:                                               ; preds = %32
  %42 = load %struct.ref_entry*, %struct.ref_entry** %4, align 8
  %43 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ref_entry*, %struct.ref_entry** %5, align 8
  %46 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %78

50:                                               ; preds = %41
  %51 = load %struct.ref_entry*, %struct.ref_entry** %4, align 8
  %52 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ref_entry*, %struct.ref_entry** %5, align 8
  %55 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %78

59:                                               ; preds = %50
  %60 = load %struct.ref_entry*, %struct.ref_entry** %4, align 8
  %61 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ref_entry*, %struct.ref_entry** %5, align 8
  %64 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 -1, i32* %3, align 4
  br label %78

68:                                               ; preds = %59
  %69 = load %struct.ref_entry*, %struct.ref_entry** %4, align 8
  %70 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ref_entry*, %struct.ref_entry** %5, align 8
  %73 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %78

77:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %76, %67, %58, %49, %40, %31, %22, %13
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
