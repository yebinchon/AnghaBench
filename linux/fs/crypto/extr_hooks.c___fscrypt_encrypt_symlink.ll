; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_hooks.c___fscrypt_encrypt_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_hooks.c___fscrypt_encrypt_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.fscrypt_str = type { i8*, i32 }
%struct.qstr = type { i32 }
%struct.fscrypt_symlink_data = type { i8*, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__fscrypt_encrypt_symlink(%struct.inode* %0, i8* %1, i32 %2, %struct.fscrypt_str* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fscrypt_str*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qstr, align 4
  %12 = alloca %struct.fscrypt_symlink_data*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.fscrypt_str* %3, %struct.fscrypt_str** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @QSTR_INIT(i8* %14, i32 %15)
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call i32 @fscrypt_require_key(%struct.inode* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %108

24:                                               ; preds = %4
  %25 = load %struct.fscrypt_str*, %struct.fscrypt_str** %9, align 8
  %26 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.fscrypt_str*, %struct.fscrypt_str** %9, align 8
  %31 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.fscrypt_symlink_data*
  store %struct.fscrypt_symlink_data* %33, %struct.fscrypt_symlink_data** %12, align 8
  br label %46

34:                                               ; preds = %24
  %35 = load %struct.fscrypt_str*, %struct.fscrypt_str** %9, align 8
  %36 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @GFP_NOFS, align 4
  %39 = call %struct.fscrypt_symlink_data* @kmalloc(i32 %37, i32 %38)
  store %struct.fscrypt_symlink_data* %39, %struct.fscrypt_symlink_data** %12, align 8
  %40 = load %struct.fscrypt_symlink_data*, %struct.fscrypt_symlink_data** %12, align 8
  %41 = icmp ne %struct.fscrypt_symlink_data* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %108

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %29
  %47 = load %struct.fscrypt_str*, %struct.fscrypt_str** %9, align 8
  %48 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = sub i64 %50, 16
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @cpu_to_le16(i32 %53)
  %55 = load %struct.fscrypt_symlink_data*, %struct.fscrypt_symlink_data** %12, align 8
  %56 = getelementptr inbounds %struct.fscrypt_symlink_data, %struct.fscrypt_symlink_data* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = load %struct.fscrypt_symlink_data*, %struct.fscrypt_symlink_data** %12, align 8
  %59 = getelementptr inbounds %struct.fscrypt_symlink_data, %struct.fscrypt_symlink_data* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @fname_encrypt(%struct.inode* %57, %struct.qstr* %11, i8* %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %46
  br label %98

66:                                               ; preds = %46
  %67 = load %struct.fscrypt_symlink_data*, %struct.fscrypt_symlink_data** %12, align 8
  %68 = getelementptr inbounds %struct.fscrypt_symlink_data, %struct.fscrypt_symlink_data* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %10, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = add i32 %76, 1
  %78 = load i32, i32* @GFP_NOFS, align 4
  %79 = call i32 @kmemdup(i8* %75, i32 %77, i32 %78)
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %66
  br label %98

87:                                               ; preds = %66
  %88 = load %struct.fscrypt_str*, %struct.fscrypt_str** %9, align 8
  %89 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.fscrypt_symlink_data*, %struct.fscrypt_symlink_data** %12, align 8
  %94 = bitcast %struct.fscrypt_symlink_data* %93 to i8*
  %95 = load %struct.fscrypt_str*, %struct.fscrypt_str** %9, align 8
  %96 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %92, %87
  store i32 0, i32* %5, align 4
  br label %108

98:                                               ; preds = %86, %65
  %99 = load %struct.fscrypt_str*, %struct.fscrypt_str** %9, align 8
  %100 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load %struct.fscrypt_symlink_data*, %struct.fscrypt_symlink_data** %12, align 8
  %105 = call i32 @kfree(%struct.fscrypt_symlink_data* %104)
  br label %106

106:                                              ; preds = %103, %98
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %97, %42, %22
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @QSTR_INIT(i8*, i32) #1

declare dso_local i32 @fscrypt_require_key(%struct.inode*) #1

declare dso_local %struct.fscrypt_symlink_data* @kmalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @fname_encrypt(%struct.inode*, %struct.qstr*, i8*, i32) #1

declare dso_local i32 @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.fscrypt_symlink_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
