; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_alloc_path_with_tree_prefix.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2pdu.c_alloc_path_with_tree_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*, i8*, i32*)* @alloc_path_with_tree_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_path_with_tree_prefix(i32** %0, i32* %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nls_table*, align 8
  %15 = alloca [2 x i32], align 4
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %17 = call i32 @cpu_to_le16(i32 92)
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = call i32 @cpu_to_le16(i32 0)
  store i32 %19, i32* %18, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %36, label %24

24:                                               ; preds = %5
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 92
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 92
  br i1 %35, label %39, label %36

36:                                               ; preds = %30, %24, %5
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %87

39:                                               ; preds = %30
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  store i8* %41, i8** %10, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sub nsw i32 %42, 2
  store i32 %43, i32* %12, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* @PATH_MAX, align 4
  %46 = call i32 @UniStrnlen(i32* %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  %55 = mul nsw i32 %54, 2
  %56 = call i32 @roundup(i32 %55, i32 8)
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32* @kzalloc(i32 %59, i32 %60)
  %62 = load i32**, i32*** %7, align 8
  store i32* %61, i32** %62, align 8
  %63 = load i32**, i32*** %7, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %39
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %87

69:                                               ; preds = %39
  %70 = call %struct.nls_table* (...) @load_nls_default()
  store %struct.nls_table* %70, %struct.nls_table** %14, align 8
  %71 = load i32**, i32*** %7, align 8
  %72 = load i32*, i32** %71, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.nls_table*, %struct.nls_table** %14, align 8
  %76 = call i32 @cifs_strtoUTF16(i32* %72, i8* %73, i32 %74, %struct.nls_table* %75)
  %77 = load i32**, i32*** %7, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %80 = call i32 @UniStrcat(i32* %78, i32* %79)
  %81 = load i32**, i32*** %7, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @UniStrcat(i32* %82, i32* %83)
  %85 = load %struct.nls_table*, %struct.nls_table** %14, align 8
  %86 = call i32 @unload_nls(%struct.nls_table* %85)
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %69, %66, %36
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @UniStrnlen(i32*, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local %struct.nls_table* @load_nls_default(...) #1

declare dso_local i32 @cifs_strtoUTF16(i32*, i8*, i32, %struct.nls_table*) #1

declare dso_local i32 @UniStrcat(i32*, i32*) #1

declare dso_local i32 @unload_nls(%struct.nls_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
