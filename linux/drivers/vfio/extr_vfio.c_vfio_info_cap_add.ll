; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_info_cap_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_info_cap_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_info_cap_header = type { i32, i8*, i8* }
%struct.vfio_info_cap = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vfio_info_cap_header* @vfio_info_cap_add(%struct.vfio_info_cap* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.vfio_info_cap_header*, align 8
  %6 = alloca %struct.vfio_info_cap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.vfio_info_cap_header*, align 8
  %12 = alloca %struct.vfio_info_cap_header*, align 8
  store %struct.vfio_info_cap* %0, %struct.vfio_info_cap** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.vfio_info_cap*, %struct.vfio_info_cap** %6, align 8
  %14 = getelementptr inbounds %struct.vfio_info_cap, %struct.vfio_info_cap* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.vfio_info_cap*, %struct.vfio_info_cap** %6, align 8
  %17 = getelementptr inbounds %struct.vfio_info_cap, %struct.vfio_info_cap* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @krealloc(i8* %15, i32 %22, i32 %23)
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %4
  %28 = load %struct.vfio_info_cap*, %struct.vfio_info_cap** %6, align 8
  %29 = getelementptr inbounds %struct.vfio_info_cap, %struct.vfio_info_cap* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @kfree(i8* %30)
  %32 = load %struct.vfio_info_cap*, %struct.vfio_info_cap** %6, align 8
  %33 = getelementptr inbounds %struct.vfio_info_cap, %struct.vfio_info_cap* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.vfio_info_cap_header* @ERR_PTR(i32 %35)
  store %struct.vfio_info_cap_header* %36, %struct.vfio_info_cap_header** %5, align 8
  br label %87

37:                                               ; preds = %4
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.vfio_info_cap*, %struct.vfio_info_cap** %6, align 8
  %40 = getelementptr inbounds %struct.vfio_info_cap, %struct.vfio_info_cap* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.vfio_info_cap*, %struct.vfio_info_cap** %6, align 8
  %43 = getelementptr inbounds %struct.vfio_info_cap, %struct.vfio_info_cap* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr i8, i8* %41, i64 %45
  %47 = bitcast i8* %46 to %struct.vfio_info_cap_header*
  store %struct.vfio_info_cap_header* %47, %struct.vfio_info_cap_header** %11, align 8
  %48 = load %struct.vfio_info_cap_header*, %struct.vfio_info_cap_header** %11, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @memset(%struct.vfio_info_cap_header* %48, i32 0, i64 %49)
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.vfio_info_cap_header*, %struct.vfio_info_cap_header** %11, align 8
  %53 = getelementptr inbounds %struct.vfio_info_cap_header, %struct.vfio_info_cap_header* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.vfio_info_cap_header*, %struct.vfio_info_cap_header** %11, align 8
  %56 = getelementptr inbounds %struct.vfio_info_cap_header, %struct.vfio_info_cap_header* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = bitcast i8* %57 to %struct.vfio_info_cap_header*
  store %struct.vfio_info_cap_header* %58, %struct.vfio_info_cap_header** %12, align 8
  br label %59

59:                                               ; preds = %65, %37
  %60 = load %struct.vfio_info_cap_header*, %struct.vfio_info_cap_header** %12, align 8
  %61 = getelementptr inbounds %struct.vfio_info_cap_header, %struct.vfio_info_cap_header* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64
  %66 = load i8*, i8** %10, align 8
  %67 = load %struct.vfio_info_cap_header*, %struct.vfio_info_cap_header** %12, align 8
  %68 = getelementptr inbounds %struct.vfio_info_cap_header, %struct.vfio_info_cap_header* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr i8, i8* %66, i64 %70
  %72 = bitcast i8* %71 to %struct.vfio_info_cap_header*
  store %struct.vfio_info_cap_header* %72, %struct.vfio_info_cap_header** %12, align 8
  br label %59

73:                                               ; preds = %59
  %74 = load %struct.vfio_info_cap*, %struct.vfio_info_cap** %6, align 8
  %75 = getelementptr inbounds %struct.vfio_info_cap, %struct.vfio_info_cap* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.vfio_info_cap_header*, %struct.vfio_info_cap_header** %12, align 8
  %78 = getelementptr inbounds %struct.vfio_info_cap_header, %struct.vfio_info_cap_header* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.vfio_info_cap*, %struct.vfio_info_cap** %6, align 8
  %81 = getelementptr inbounds %struct.vfio_info_cap, %struct.vfio_info_cap* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, %79
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 8
  %86 = load %struct.vfio_info_cap_header*, %struct.vfio_info_cap_header** %11, align 8
  store %struct.vfio_info_cap_header* %86, %struct.vfio_info_cap_header** %5, align 8
  br label %87

87:                                               ; preds = %73, %27
  %88 = load %struct.vfio_info_cap_header*, %struct.vfio_info_cap_header** %5, align 8
  ret %struct.vfio_info_cap_header* %88
}

declare dso_local i8* @krealloc(i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.vfio_info_cap_header* @ERR_PTR(i32) #1

declare dso_local i32 @memset(%struct.vfio_info_cap_header*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
