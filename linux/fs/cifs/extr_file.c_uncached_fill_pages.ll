; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_uncached_fill_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_uncached_fill_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32 }
%struct.cifs_readdata = type { i32, i32, i64, i32, i32, i64, %struct.page** }
%struct.page = type { i32 }
%struct.iov_iter = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.cifs_readdata*, %struct.iov_iter*, i32)* @uncached_fill_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uncached_fill_pages(%struct.TCP_Server_Info* %0, %struct.cifs_readdata* %1, %struct.iov_iter* %2, i32 %3) #0 {
  %5 = alloca %struct.TCP_Server_Info*, align 8
  %6 = alloca %struct.cifs_readdata*, align 8
  %7 = alloca %struct.iov_iter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %5, align 8
  store %struct.cifs_readdata* %1, %struct.cifs_readdata** %6, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %17 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  %19 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %20 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %23 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %26 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %109, %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %112

31:                                               ; preds = %27
  %32 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %33 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %32, i32 0, i32 6
  %34 = load %struct.page**, %struct.page*** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.page*, %struct.page** %34, i64 %36
  %38 = load %struct.page*, %struct.page** %37, align 8
  store %struct.page* %38, %struct.page** %13, align 8
  %39 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %40 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %15, align 4
  %47 = sub i32 %46, %45
  store i32 %47, i32* %15, align 4
  br label %49

48:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %48, %44
  %50 = load i32, i32* %8, align 4
  %51 = icmp ule i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %54 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %53, i32 0, i32 6
  %55 = load %struct.page**, %struct.page*** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.page*, %struct.page** %55, i64 %57
  store %struct.page* null, %struct.page** %58, align 8
  %59 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %60 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add i32 %61, -1
  store i32 %62, i32* %60, align 8
  %63 = load %struct.page*, %struct.page** %13, align 8
  %64 = call i32 @put_page(%struct.page* %63)
  br label %109

65:                                               ; preds = %49
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  store i64 %67, i64* %14, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp uge i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* %15, align 4
  %73 = zext i32 %72 to i64
  store i64 %73, i64* %14, align 8
  br label %78

74:                                               ; preds = %65
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %77 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i64, i64* %14, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = sub i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %8, align 4
  %84 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %85 = icmp ne %struct.iov_iter* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load %struct.page*, %struct.page** %13, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i64, i64* %14, align 8
  %90 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %91 = call i32 @copy_page_from_iter(%struct.page* %87, i32 %88, i64 %89, %struct.iov_iter* %90)
  store i32 %91, i32* %9, align 4
  br label %98

92:                                               ; preds = %78
  %93 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %5, align 8
  %94 = load %struct.page*, %struct.page** %13, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load i64, i64* %14, align 8
  %97 = call i32 @cifs_read_page_from_socket(%struct.TCP_Server_Info* %93, %struct.page* %94, i32 %95, i64 %96)
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %92, %86
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %112

102:                                              ; preds = %98
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %106 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, %104
  store i64 %108, i64* %106, align 8
  br label %109

109:                                              ; preds = %102, %52
  %110 = load i32, i32* %10, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %27

112:                                              ; preds = %101, %27
  %113 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %114 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @ECONNABORTED, align 4
  %120 = sub nsw i32 0, %119
  %121 = icmp ne i32 %118, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.cifs_readdata*, %struct.cifs_readdata** %6, align 8
  %124 = getelementptr inbounds %struct.cifs_readdata, %struct.cifs_readdata* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  br label %129

126:                                              ; preds = %117, %112
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  br label %129

129:                                              ; preds = %126, %122
  %130 = phi i64 [ %125, %122 ], [ %128, %126 ]
  %131 = trunc i64 %130 to i32
  ret i32 %131
}

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @copy_page_from_iter(%struct.page*, i32, i64, %struct.iov_iter*) #1

declare dso_local i32 @cifs_read_page_from_socket(%struct.TCP_Server_Info*, %struct.page*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
