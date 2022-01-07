; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dir.c_cifs_ci_hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dir.c_cifs_ci_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i32, i32, i32* }
%struct.nls_table = type { i32 (i32*, i32, i32*)* }
%struct.TYPE_2__ = type { %struct.nls_table* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.qstr*)* @cifs_ci_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_ci_hash(%struct.dentry* %0, %struct.qstr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca %struct.nls_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_2__* @CIFS_SB(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.nls_table*, %struct.nls_table** %15, align 8
  store %struct.nls_table* %16, %struct.nls_table** %6, align 8
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = call i64 @init_name_hash(%struct.dentry* %17)
  store i64 %18, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %53, %2
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.qstr*, %struct.qstr** %5, align 8
  %22 = getelementptr inbounds %struct.qstr, %struct.qstr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %19
  %26 = load %struct.nls_table*, %struct.nls_table** %6, align 8
  %27 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %26, i32 0, i32 0
  %28 = load i32 (i32*, i32, i32*)*, i32 (i32*, i32, i32*)** %27, align 8
  %29 = load %struct.qstr*, %struct.qstr** %5, align 8
  %30 = getelementptr inbounds %struct.qstr, %struct.qstr* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load %struct.qstr*, %struct.qstr** %5, align 8
  %36 = getelementptr inbounds %struct.qstr, %struct.qstr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 %37, %38
  %40 = call i32 %28(i32* %34, i32 %39, i32* %8)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %25
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %62

48:                                               ; preds = %25
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @cifs_toupper(i32 %49)
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @partial_name_hash(i32 %50, i64 %51)
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %19

57:                                               ; preds = %19
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @end_name_hash(i64 %58)
  %60 = load %struct.qstr*, %struct.qstr** %5, align 8
  %61 = getelementptr inbounds %struct.qstr, %struct.qstr* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %46
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_2__* @CIFS_SB(i32) #1

declare dso_local i64 @init_name_hash(%struct.dentry*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @partial_name_hash(i32, i64) #1

declare dso_local i32 @cifs_toupper(i32) #1

declare dso_local i32 @end_name_hash(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
