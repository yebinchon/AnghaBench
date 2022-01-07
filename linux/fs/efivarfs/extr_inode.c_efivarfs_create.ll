; ModuleID = '/home/carl/AnghaBench/linux/fs/efivarfs/extr_inode.c_efivarfs_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/efivarfs/extr_inode.c_efivarfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.efivar_entry*, i32 }
%struct.efivar_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFI_VARIABLE_GUID_LEN = common dso_local global i32 0, align 4
@efivarfs_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @efivarfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efivarfs_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.efivar_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.inode* null, %struct.inode** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.dentry*, %struct.dentry** %7, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.dentry*, %struct.dentry** %7, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @efivarfs_valid_name(i8* %19, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %146

29:                                               ; preds = %4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.efivar_entry* @kzalloc(i32 16, i32 %30)
  store %struct.efivar_entry* %31, %struct.efivar_entry** %11, align 8
  %32 = load %struct.efivar_entry*, %struct.efivar_entry** %11, align 8
  %33 = icmp ne %struct.efivar_entry* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %146

37:                                               ; preds = %29
  %38 = load %struct.dentry*, %struct.dentry** %7, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @EFI_VARIABLE_GUID_LEN, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  %45 = load %struct.dentry*, %struct.dentry** %7, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load %struct.efivar_entry*, %struct.efivar_entry** %11, align 8
  %54 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = call i32 @guid_parse(i8* %52, i32* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %37
  br label %132

60:                                               ; preds = %37
  %61 = load %struct.efivar_entry*, %struct.efivar_entry** %11, align 8
  %62 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.dentry*, %struct.dentry** %7, align 8
  %66 = getelementptr inbounds %struct.dentry, %struct.dentry* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i64 @efivar_variable_is_removable(i32 %64, i8* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  store i32 1, i32* %15, align 4
  br label %73

73:                                               ; preds = %72, %60
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %15, align 4
  %80 = call %struct.inode* @efivarfs_get_inode(i32 %76, %struct.inode* %77, i32 %78, i32 0, i32 %79)
  store %struct.inode* %80, %struct.inode** %10, align 8
  %81 = load %struct.inode*, %struct.inode** %10, align 8
  %82 = icmp ne %struct.inode* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %73
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %14, align 4
  br label %132

86:                                               ; preds = %73
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %107, %86
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %87
  %92 = load %struct.dentry*, %struct.dentry** %7, align 8
  %93 = getelementptr inbounds %struct.dentry, %struct.dentry* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = load %struct.efivar_entry*, %struct.efivar_entry** %11, align 8
  %101 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  store i8 %99, i8* %106, align 1
  br label %107

107:                                              ; preds = %91
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %87

110:                                              ; preds = %87
  %111 = load %struct.efivar_entry*, %struct.efivar_entry** %11, align 8
  %112 = getelementptr inbounds %struct.efivar_entry, %struct.efivar_entry* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 0, i8* %117, align 1
  %118 = load %struct.efivar_entry*, %struct.efivar_entry** %11, align 8
  %119 = load %struct.inode*, %struct.inode** %10, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 0
  store %struct.efivar_entry* %118, %struct.efivar_entry** %120, align 8
  %121 = load %struct.efivar_entry*, %struct.efivar_entry** %11, align 8
  %122 = call i32 @efivar_entry_add(%struct.efivar_entry* %121, i32* @efivarfs_list)
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %110
  br label %132

126:                                              ; preds = %110
  %127 = load %struct.dentry*, %struct.dentry** %7, align 8
  %128 = load %struct.inode*, %struct.inode** %10, align 8
  %129 = call i32 @d_instantiate(%struct.dentry* %127, %struct.inode* %128)
  %130 = load %struct.dentry*, %struct.dentry** %7, align 8
  %131 = call i32 @dget(%struct.dentry* %130)
  br label %132

132:                                              ; preds = %126, %125, %83, %59
  %133 = load i32, i32* %14, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load %struct.efivar_entry*, %struct.efivar_entry** %11, align 8
  %137 = call i32 @kfree(%struct.efivar_entry* %136)
  %138 = load %struct.inode*, %struct.inode** %10, align 8
  %139 = icmp ne %struct.inode* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load %struct.inode*, %struct.inode** %10, align 8
  %142 = call i32 @iput(%struct.inode* %141)
  br label %143

143:                                              ; preds = %140, %135
  br label %144

144:                                              ; preds = %143, %132
  %145 = load i32, i32* %14, align 4
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %144, %34, %26
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @efivarfs_valid_name(i8*, i32) #1

declare dso_local %struct.efivar_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @guid_parse(i8*, i32*) #1

declare dso_local i64 @efivar_variable_is_removable(i32, i8*, i32) #1

declare dso_local %struct.inode* @efivarfs_get_inode(i32, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @efivar_entry_add(%struct.efivar_entry*, i32*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @kfree(%struct.efivar_entry*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
