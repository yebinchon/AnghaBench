; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_lf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_lf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty3270 = type { i32, %struct.TYPE_2__, %struct.tty3270_line* }
%struct.TYPE_2__ = type { i32 }
%struct.tty3270_line = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty3270*)* @tty3270_lf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3270_lf(%struct.tty3270* %0) #0 {
  %2 = alloca %struct.tty3270*, align 8
  %3 = alloca %struct.tty3270_line, align 8
  %4 = alloca i32, align 4
  store %struct.tty3270* %0, %struct.tty3270** %2, align 8
  %5 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %6 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %7 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @tty3270_convert_line(%struct.tty3270* %5, i32 %8)
  %10 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %11 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %14 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 3
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %21 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  br label %76

24:                                               ; preds = %1
  %25 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %26 = call i32 @tty3270_blank_line(%struct.tty3270* %25)
  %27 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %28 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %27, i32 0, i32 2
  %29 = load %struct.tty3270_line*, %struct.tty3270_line** %28, align 8
  %30 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %29, i64 0
  %31 = bitcast %struct.tty3270_line* %3 to i8*
  %32 = bitcast %struct.tty3270_line* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false)
  %33 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %3, i32 0, i32 0
  store i64 0, i64* %33, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %58, %24
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %37 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 3
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %34
  %43 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %44 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %43, i32 0, i32 2
  %45 = load %struct.tty3270_line*, %struct.tty3270_line** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %45, i64 %47
  %49 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %50 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %49, i32 0, i32 2
  %51 = load %struct.tty3270_line*, %struct.tty3270_line** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %51, i64 %54
  %56 = bitcast %struct.tty3270_line* %48 to i8*
  %57 = bitcast %struct.tty3270_line* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  br label %58

58:                                               ; preds = %42
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %34

61:                                               ; preds = %34
  %62 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %63 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %62, i32 0, i32 2
  %64 = load %struct.tty3270_line*, %struct.tty3270_line** %63, align 8
  %65 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %66 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %64, i64 %70
  %72 = bitcast %struct.tty3270_line* %71 to i8*
  %73 = bitcast %struct.tty3270_line* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 8, i1 false)
  %74 = load %struct.tty3270*, %struct.tty3270** %2, align 8
  %75 = call i32 @tty3270_rebuild_update(%struct.tty3270* %74)
  br label %76

76:                                               ; preds = %61, %19
  ret void
}

declare dso_local i32 @tty3270_convert_line(%struct.tty3270*, i32) #1

declare dso_local i32 @tty3270_blank_line(%struct.tty3270*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tty3270_rebuild_update(%struct.tty3270*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
