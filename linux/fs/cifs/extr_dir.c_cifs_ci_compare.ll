; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dir.c_cifs_ci_compare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dir.c_cifs_ci_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i32, i8* }
%struct.nls_table = type { i32 (i8*, i32, i32*)* }
%struct.TYPE_2__ = type { %struct.nls_table* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32, i8*, %struct.qstr*)* @cifs_ci_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_ci_compare(%struct.dentry* %0, i32 %1, i8* %2, %struct.qstr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca %struct.nls_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.qstr* %3, %struct.qstr** %9, align 8
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_2__* @CIFS_SB(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.nls_table*, %struct.nls_table** %20, align 8
  store %struct.nls_table* %21, %struct.nls_table** %10, align 8
  %22 = load %struct.qstr*, %struct.qstr** %9, align 8
  %23 = getelementptr inbounds %struct.qstr, %struct.qstr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %106

28:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %101, %28
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %105

33:                                               ; preds = %29
  %34 = load %struct.nls_table*, %struct.nls_table** %10, align 8
  %35 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %34, i32 0, i32 0
  %36 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %35, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %13, align 4
  %43 = sub i32 %41, %42
  %44 = call i32 %36(i8* %40, i32 %43, i32* %11)
  store i32 %44, i32* %14, align 4
  %45 = load %struct.nls_table*, %struct.nls_table** %10, align 8
  %46 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %45, i32 0, i32 0
  %47 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %46, align 8
  %48 = load %struct.qstr*, %struct.qstr** %9, align 8
  %49 = getelementptr inbounds %struct.qstr, %struct.qstr* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load %struct.qstr*, %struct.qstr** %9, align 8
  %55 = getelementptr inbounds %struct.qstr, %struct.qstr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sub i32 %56, %57
  %59 = call i32 %47(i8* %53, i32 %58, i32* %12)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %33
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 0
  br label %65

65:                                               ; preds = %62, %33
  %66 = phi i1 [ false, %33 ], [ %64, %62 ]
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %65
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = load %struct.qstr*, %struct.qstr** %9, align 8
  %78 = getelementptr inbounds %struct.qstr, %struct.qstr* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %76, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %70
  store i32 1, i32* %5, align 4
  br label %106

87:                                               ; preds = %70
  store i32 1, i32* %14, align 4
  br label %101

88:                                               ; preds = %65
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 1, i32* %5, align 4
  br label %106

93:                                               ; preds = %88
  %94 = load i32, i32* %11, align 4
  %95 = call i64 @cifs_toupper(i32 %94)
  %96 = load i32, i32* %12, align 4
  %97 = call i64 @cifs_toupper(i32 %96)
  %98 = icmp ne i64 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 1, i32* %5, align 4
  br label %106

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %87
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %13, align 4
  br label %29

105:                                              ; preds = %29
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %105, %99, %92, %86, %27
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local %struct.TYPE_2__* @CIFS_SB(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @cifs_toupper(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
