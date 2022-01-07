; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c___iterate_backrefs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c___iterate_backrefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backref_ctx = type { i64, i64, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.clone_root = type { i64, i64, i64, i32 }

@__clone_root_cmp_bsearch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i8*)* @__iterate_backrefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iterate_backrefs(i64 %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.backref_ctx*, align 8
  %11 = alloca %struct.clone_root*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.backref_ctx*
  store %struct.backref_ctx* %13, %struct.backref_ctx** %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = load %struct.backref_ctx*, %struct.backref_ctx** %10, align 8
  %17 = getelementptr inbounds %struct.backref_ctx, %struct.backref_ctx* %16, i32 0, i32 5
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.backref_ctx*, %struct.backref_ctx** %10, align 8
  %22 = getelementptr inbounds %struct.backref_ctx, %struct.backref_ctx* %21, i32 0, i32 5
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @__clone_root_cmp_bsearch, align 4
  %27 = call %struct.clone_root* @bsearch(i8* %15, i32 %20, i32 %25, i32 32, i32 %26)
  store %struct.clone_root* %27, %struct.clone_root** %11, align 8
  %28 = load %struct.clone_root*, %struct.clone_root** %11, align 8
  %29 = icmp ne %struct.clone_root* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %118

31:                                               ; preds = %4
  %32 = load %struct.clone_root*, %struct.clone_root** %11, align 8
  %33 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.backref_ctx*, %struct.backref_ctx** %10, align 8
  %36 = getelementptr inbounds %struct.backref_ctx, %struct.backref_ctx* %35, i32 0, i32 5
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %34, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %31
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.backref_ctx*, %struct.backref_ctx** %10, align 8
  %44 = getelementptr inbounds %struct.backref_ctx, %struct.backref_ctx* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.backref_ctx*, %struct.backref_ctx** %10, align 8
  %50 = getelementptr inbounds %struct.backref_ctx, %struct.backref_ctx* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.backref_ctx*, %struct.backref_ctx** %10, align 8
  %55 = getelementptr inbounds %struct.backref_ctx, %struct.backref_ctx* %54, i32 0, i32 2
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %47, %41, %31
  %57 = load %struct.clone_root*, %struct.clone_root** %11, align 8
  %58 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.backref_ctx*, %struct.backref_ctx** %10, align 8
  %61 = getelementptr inbounds %struct.backref_ctx, %struct.backref_ctx* %60, i32 0, i32 5
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %59, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %56
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.backref_ctx*, %struct.backref_ctx** %10, align 8
  %69 = getelementptr inbounds %struct.backref_ctx, %struct.backref_ctx* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sge i64 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %118

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %56
  %75 = load %struct.backref_ctx*, %struct.backref_ctx** %10, align 8
  %76 = getelementptr inbounds %struct.backref_ctx, %struct.backref_ctx* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load %struct.clone_root*, %struct.clone_root** %11, align 8
  %80 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.clone_root*, %struct.clone_root** %11, align 8
  %85 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %83, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %74
  %89 = load i64, i64* %6, align 8
  %90 = load %struct.clone_root*, %struct.clone_root** %11, align 8
  %91 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.clone_root*, %struct.clone_root** %11, align 8
  %94 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  br label %117

95:                                               ; preds = %74
  %96 = load %struct.clone_root*, %struct.clone_root** %11, align 8
  %97 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %6, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %95
  %102 = load %struct.clone_root*, %struct.clone_root** %11, align 8
  %103 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load %struct.backref_ctx*, %struct.backref_ctx** %10, align 8
  %107 = getelementptr inbounds %struct.backref_ctx, %struct.backref_ctx* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %105, %108
  %110 = icmp sgt i64 %104, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %101
  %112 = load i64, i64* %7, align 8
  %113 = load %struct.clone_root*, %struct.clone_root** %11, align 8
  %114 = getelementptr inbounds %struct.clone_root, %struct.clone_root* %113, i32 0, i32 2
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %111, %101
  br label %116

116:                                              ; preds = %115, %95
  br label %117

117:                                              ; preds = %116, %88
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %72, %30
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.clone_root* @bsearch(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
