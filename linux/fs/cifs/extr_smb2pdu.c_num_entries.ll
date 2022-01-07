; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_num_entries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_num_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"malformed search entry would overflow\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"directory entry name would overflow frame end of buf %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8**, i64)* @num_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @num_entries(i8* %0, i8* %1, i8** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %100

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %13, align 8
  br label %20

20:                                               ; preds = %18, %97
  %21 = load i8*, i8** %13, align 8
  %22 = load i32, i32* %12, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8*, i8** %13, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %43, label %27

27:                                               ; preds = %20
  %28 = load i8*, i8** %13, align 8
  %29 = load i32, i32* %12, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ugt i8* %31, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %27
  %35 = load i8*, i8** %13, align 8
  %36 = load i32, i32* %12, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ugt i8* %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %34, %27, %20
  %44 = load i32, i32* @VFS, align 4
  %45 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %98

46:                                               ; preds = %34
  %47 = load i8*, i8** %13, align 8
  %48 = load i32, i32* %12, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8* %50, i8** %13, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = bitcast i8* %51 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %52, %struct.TYPE_2__** %14, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @le32_to_cpu(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %10, align 4
  %58 = load i8*, i8** %13, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8*, i8** %13, align 8
  %63 = icmp ult i8* %61, %62
  br i1 %63, label %80, label %64

64:                                               ; preds = %46
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ugt i8* %68, %69
  br i1 %70, label %80, label %71

71:                                               ; preds = %64
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i8*, i8** %7, align 8
  %79 = icmp ugt i8* %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %71, %64, %46
  %81 = load i32, i32* @VFS, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %81, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  br label %98

84:                                               ; preds = %71
  %85 = load i8*, i8** %13, align 8
  %86 = load i8**, i8*** %8, align 8
  store i8* %85, i8** %86, align 8
  %87 = load i32, i32* %11, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %11, align 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @le32_to_cpu(i32 %91)
  %93 = ptrtoint i8* %92 to i32
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %84
  br label %98

97:                                               ; preds = %84
  br label %20

98:                                               ; preds = %96, %80, %43
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %17
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
