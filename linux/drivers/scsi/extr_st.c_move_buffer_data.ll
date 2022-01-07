; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_move_buffer_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_move_buffer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_buffer = type { i32, i32, i32, i32, %struct.page** }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_buffer*, i32)* @move_buffer_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_buffer_data(%struct.st_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.st_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.page*, align 8
  store %struct.st_buffer* %0, %struct.st_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = load %struct.st_buffer*, %struct.st_buffer** %3, align 8
  %16 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 %14, %17
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %113

22:                                               ; preds = %2
  %23 = load %struct.st_buffer*, %struct.st_buffer** %3, align 8
  %24 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %44, %22
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.st_buffer*, %struct.st_buffer** %3, align 8
  %31 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %47

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %4, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %28

47:                                               ; preds = %39, %28
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.st_buffer*, %struct.st_buffer** %3, align 8
  %50 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.st_buffer*, %struct.st_buffer** %3, align 8
  %52 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %109, %47
  %54 = load i32, i32* %10, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %113

56:                                               ; preds = %53
  %57 = load %struct.st_buffer*, %struct.st_buffer** %3, align 8
  %58 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %57, i32 0, i32 4
  %59 = load %struct.page**, %struct.page*** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.page*, %struct.page** %59, i64 %61
  %63 = load %struct.page*, %struct.page** %62, align 8
  store %struct.page* %63, %struct.page** %12, align 8
  %64 = load %struct.st_buffer*, %struct.st_buffer** %3, align 8
  %65 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %64, i32 0, i32 4
  %66 = load %struct.page**, %struct.page*** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.page*, %struct.page** %66, i64 %68
  %70 = load %struct.page*, %struct.page** %69, align 8
  store %struct.page* %70, %struct.page** %13, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %71, %72
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %7, align 4
  %76 = sub nsw i32 %74, %75
  %77 = call i32 @min(i32 %73, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load %struct.page*, %struct.page** %12, align 8
  %79 = call i64 @page_address(%struct.page* %78)
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = load %struct.page*, %struct.page** %13, align 8
  %84 = call i64 @page_address(%struct.page* %83)
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @memmove(i64 %82, i64 %87, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %56
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %96, %56
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %109

109:                                              ; preds = %106, %99
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = sub nsw i32 %111, %110
  store i32 %112, i32* %10, align 4
  br label %53

113:                                              ; preds = %21, %53
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
