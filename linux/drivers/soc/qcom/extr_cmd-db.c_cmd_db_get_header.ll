; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_cmd-db.c_cmd_db_get_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_cmd-db.c_cmd_db_get_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.rsc_hdr* }
%struct.rsc_hdr = type { i32, i32 }
%struct.entry_header = type { i32 }

@MAX_SLV_ID = common dso_local global i32 0, align 4
@cmd_db_header = common dso_local global %struct.TYPE_2__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.entry_header**, %struct.rsc_hdr**)* @cmd_db_get_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_db_get_header(i8* %0, %struct.entry_header** %1, %struct.rsc_hdr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.entry_header**, align 8
  %7 = alloca %struct.rsc_hdr**, align 8
  %8 = alloca %struct.rsc_hdr*, align 8
  %9 = alloca %struct.entry_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x i32], align 16
  store i8* %0, i8** %5, align 8
  store %struct.entry_header** %1, %struct.entry_header*** %6, align 8
  store %struct.rsc_hdr** %2, %struct.rsc_hdr*** %7, align 8
  %14 = call i32 (...) @cmd_db_ready()
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %82

19:                                               ; preds = %3
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strncpy(i32* %20, i8* %21, i32 32)
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %76, %19
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @MAX_SLV_ID, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %79

27:                                               ; preds = %23
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cmd_db_header, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.rsc_hdr*, %struct.rsc_hdr** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.rsc_hdr, %struct.rsc_hdr* %30, i64 %32
  store %struct.rsc_hdr* %33, %struct.rsc_hdr** %8, align 8
  %34 = load %struct.rsc_hdr*, %struct.rsc_hdr** %8, align 8
  %35 = getelementptr inbounds %struct.rsc_hdr, %struct.rsc_hdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  br label %79

39:                                               ; preds = %27
  %40 = load %struct.rsc_hdr*, %struct.rsc_hdr** %8, align 8
  %41 = call %struct.entry_header* @rsc_to_entry_header(%struct.rsc_hdr* %40)
  store %struct.entry_header* %41, %struct.entry_header** %9, align 8
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %70, %39
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.rsc_hdr*, %struct.rsc_hdr** %8, align 8
  %45 = getelementptr inbounds %struct.rsc_hdr, %struct.rsc_hdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le16_to_cpu(i32 %46)
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %42
  %50 = load %struct.entry_header*, %struct.entry_header** %9, align 8
  %51 = getelementptr inbounds %struct.entry_header, %struct.entry_header* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %54 = call i64 @memcmp(i32 %52, i32* %53, i32 4)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %49
  %57 = load %struct.entry_header**, %struct.entry_header*** %6, align 8
  %58 = icmp ne %struct.entry_header** %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.entry_header*, %struct.entry_header** %9, align 8
  %61 = load %struct.entry_header**, %struct.entry_header*** %6, align 8
  store %struct.entry_header* %60, %struct.entry_header** %61, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.rsc_hdr**, %struct.rsc_hdr*** %7, align 8
  %64 = icmp ne %struct.rsc_hdr** %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.rsc_hdr*, %struct.rsc_hdr** %8, align 8
  %67 = load %struct.rsc_hdr**, %struct.rsc_hdr*** %7, align 8
  store %struct.rsc_hdr* %66, %struct.rsc_hdr** %67, align 8
  br label %68

68:                                               ; preds = %65, %62
  store i32 0, i32* %4, align 4
  br label %82

69:                                               ; preds = %49
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  %73 = load %struct.entry_header*, %struct.entry_header** %9, align 8
  %74 = getelementptr inbounds %struct.entry_header, %struct.entry_header* %73, i32 1
  store %struct.entry_header* %74, %struct.entry_header** %9, align 8
  br label %42

75:                                               ; preds = %42
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %23

79:                                               ; preds = %38, %23
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %79, %68, %17
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @cmd_db_ready(...) #1

declare dso_local i32 @strncpy(i32*, i8*, i32) #1

declare dso_local %struct.entry_header* @rsc_to_entry_header(%struct.rsc_hdr*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
