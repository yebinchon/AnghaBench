; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_pool_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_pool = type { i32, i8**, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_pool_init(%struct.iscsi_pool* %0, i32 %1, i8*** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_pool*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8***, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iscsi_pool* %0, %struct.iscsi_pool** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8*** %2, i8**** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %11, align 4
  %12 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %13 = call i32 @memset(%struct.iscsi_pool* %12, i32 0, i32 24)
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %16 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i8***, i8**** %8, align 8
  %18 = icmp ne i8*** %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %19, %4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8** @kvcalloc(i32 %25, i32 8, i32 %26)
  %28 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %29 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %28, i32 0, i32 1
  store i8** %27, i8*** %29, align 8
  %30 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %31 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %30, i32 0, i32 1
  %32 = load i8**, i8*** %31, align 8
  %33 = icmp eq i8** %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %116

37:                                               ; preds = %22
  %38 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %39 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %38, i32 0, i32 2
  %40 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %41 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %40, i32 0, i32 1
  %42 = load i8**, i8*** %41, align 8
  %43 = bitcast i8** %42 to i8*
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @kfifo_init(i32* %39, i8* %43, i32 %47)
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %86, %37
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %89

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @kzalloc(i32 %54, i32 %55)
  %57 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %58 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %57, i32 0, i32 1
  %59 = load i8**, i8*** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  store i8* %56, i8** %62, align 8
  %63 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %64 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %63, i32 0, i32 1
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %53
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %74 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %111

75:                                               ; preds = %53
  %76 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %77 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %76, i32 0, i32 2
  %78 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %79 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %78, i32 0, i32 1
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = bitcast i8** %83 to i8*
  %85 = call i32 @kfifo_in(i32* %77, i8* %84, i32 8)
  br label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %49

89:                                               ; preds = %49
  %90 = load i8***, i8**** %8, align 8
  %91 = icmp ne i8*** %90, null
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %94 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %93, i32 0, i32 1
  %95 = load i8**, i8*** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8***, i8**** %8, align 8
  store i8** %98, i8*** %99, align 8
  %100 = load i8***, i8**** %8, align 8
  %101 = load i8**, i8*** %100, align 8
  %102 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %103 = getelementptr inbounds %struct.iscsi_pool, %struct.iscsi_pool* %102, i32 0, i32 1
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 @memcpy(i8** %101, i8** %104, i32 %108)
  br label %110

110:                                              ; preds = %92, %89
  store i32 0, i32* %5, align 4
  br label %116

111:                                              ; preds = %71
  %112 = load %struct.iscsi_pool*, %struct.iscsi_pool** %6, align 8
  %113 = call i32 @iscsi_pool_free(%struct.iscsi_pool* %112)
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %111, %110, %34
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @memset(%struct.iscsi_pool*, i32, i32) #1

declare dso_local i8** @kvcalloc(i32, i32, i32) #1

declare dso_local i32 @kfifo_init(i32*, i8*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfifo_in(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i32 @iscsi_pool_free(%struct.iscsi_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
