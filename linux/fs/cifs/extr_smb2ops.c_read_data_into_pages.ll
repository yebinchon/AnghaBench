; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_read_data_into_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_read_data_into_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.page**, i32, i32)* @read_data_into_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_data_into_pages(%struct.TCP_Server_Info* %0, %struct.page** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TCP_Server_Info*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca i64, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %6, align 8
  store %struct.page** %1, %struct.page*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %59, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %14
  %19 = load %struct.page**, %struct.page*** %7, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.page*, %struct.page** %19, i64 %21
  %23 = load %struct.page*, %struct.page** %22, align 8
  store %struct.page* %23, %struct.page** %12, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %13, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = zext i32 %30 to i64
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = sub i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %9, align 4
  br label %44

37:                                               ; preds = %18
  %38 = load %struct.page*, %struct.page** %12, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sub i32 %40, %41
  %43 = call i32 @zero_user(%struct.page* %38, i32 %39, i32 %42)
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %37, %29
  %45 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %46 = load %struct.page*, %struct.page** %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @cifs_read_page_from_socket(%struct.TCP_Server_Info* %45, %struct.page* %46, i32 0, i64 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %63

53:                                               ; preds = %44
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %6, align 8
  %56 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %14

62:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %51
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @cifs_read_page_from_socket(%struct.TCP_Server_Info*, %struct.page*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
