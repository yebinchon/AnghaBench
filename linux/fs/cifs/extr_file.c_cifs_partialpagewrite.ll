; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_partialpagewrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_file.c_cifs_partialpagewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.address_space*, i64 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i64, i32, i32 }
%struct.cifsFileInfo = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"No writable handle for write page rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32, i32)* @cifs_partialpagewrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_partialpagewrite(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.cifsFileInfo*, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 0
  %17 = load %struct.address_space*, %struct.address_space** %16, align 8
  store %struct.address_space* %17, %struct.address_space** %8, align 8
  %18 = load %struct.page*, %struct.page** %5, align 8
  %19 = getelementptr inbounds %struct.page, %struct.page* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PAGE_SHIFT, align 8
  %22 = shl i64 %20, %21
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* @EFAULT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %25 = load %struct.address_space*, %struct.address_space** %8, align 8
  %26 = icmp ne %struct.address_space* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.address_space*, %struct.address_space** %8, align 8
  %29 = getelementptr inbounds %struct.address_space, %struct.address_space* %28, i32 0, i32 0
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  %31 = icmp ne %struct.inode* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27, %3
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %151

35:                                               ; preds = %27
  %36 = load %struct.page*, %struct.page** %5, align 8
  %37 = getelementptr inbounds %struct.page, %struct.page* %36, i32 0, i32 0
  %38 = load %struct.address_space*, %struct.address_space** %37, align 8
  %39 = getelementptr inbounds %struct.address_space, %struct.address_space* %38, i32 0, i32 0
  %40 = load %struct.inode*, %struct.inode** %39, align 8
  store %struct.inode* %40, %struct.inode** %13, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64, i64* %9, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %9, align 8
  %45 = load %struct.page*, %struct.page** %5, align 8
  %46 = call i8* @kmap(%struct.page* %45)
  store i8* %46, i8** %10, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i8*, i8** %10, align 8
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %10, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %35
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ugt i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54, %35
  %59 = load %struct.page*, %struct.page** %5, align 8
  %60 = call i32 @kunmap(%struct.page* %59)
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %151

63:                                               ; preds = %54
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.address_space*, %struct.address_space** %8, align 8
  %66 = getelementptr inbounds %struct.address_space, %struct.address_space* %65, i32 0, i32 0
  %67 = load %struct.inode*, %struct.inode** %66, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %64, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load %struct.page*, %struct.page** %5, align 8
  %73 = call i32 @kunmap(%struct.page* %72)
  store i32 0, i32* %4, align 4
  br label %151

74:                                               ; preds = %63
  %75 = load %struct.address_space*, %struct.address_space** %8, align 8
  %76 = getelementptr inbounds %struct.address_space, %struct.address_space* %75, i32 0, i32 0
  %77 = load %struct.inode*, %struct.inode** %76, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = sub nsw i64 %79, %80
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = icmp slt i64 %81, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %74
  %86 = load %struct.address_space*, %struct.address_space** %8, align 8
  %87 = getelementptr inbounds %struct.address_space, %struct.address_space* %86, i32 0, i32 0
  %88 = load %struct.inode*, %struct.inode** %87, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = sub nsw i64 %90, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %85, %74
  %95 = load %struct.address_space*, %struct.address_space** %8, align 8
  %96 = getelementptr inbounds %struct.address_space, %struct.address_space* %95, i32 0, i32 0
  %97 = load %struct.inode*, %struct.inode** %96, align 8
  %98 = call i32 @CIFS_I(%struct.inode* %97)
  %99 = call i32 @cifs_get_writable_file(i32 %98, i32 0, %struct.cifsFileInfo** %14)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %136, label %102

102:                                              ; preds = %94
  %103 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %104 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %105 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %10, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %6, align 4
  %110 = sub i32 %108, %109
  %111 = call i32 @cifs_write(%struct.cifsFileInfo* %103, i32 %106, i8* %107, i32 %110, i64* %9)
  store i32 %111, i32* %12, align 4
  %112 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  %113 = call i32 @cifsFileInfo_put(%struct.cifsFileInfo* %112)
  %114 = load %struct.inode*, %struct.inode** %13, align 8
  %115 = call i32 @current_time(%struct.inode* %114)
  %116 = load %struct.inode*, %struct.inode** %13, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  %118 = load %struct.inode*, %struct.inode** %13, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 2
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %102
  %123 = load i64, i64* %9, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 0, i32* %11, align 4
  br label %135

126:                                              ; preds = %122, %102
  %127 = load i32, i32* %12, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %11, align 4
  br label %134

131:                                              ; preds = %126
  %132 = load i32, i32* @EFAULT, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %131, %129
  br label %135

135:                                              ; preds = %134, %125
  br label %147

136:                                              ; preds = %94
  %137 = load i32, i32* @FYI, align 4
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @cifs_dbg(i32 %137, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @is_retryable_error(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %136
  %144 = load i32, i32* @EIO, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %143, %136
  br label %147

147:                                              ; preds = %146, %135
  %148 = load %struct.page*, %struct.page** %5, align 8
  %149 = call i32 @kunmap(%struct.page* %148)
  %150 = load i32, i32* %11, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %147, %71, %58, %32
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @cifs_get_writable_file(i32, i32, %struct.cifsFileInfo**) #1

declare dso_local i32 @CIFS_I(%struct.inode*) #1

declare dso_local i32 @cifs_write(%struct.cifsFileInfo*, i32, i8*, i32, i64*) #1

declare dso_local i32 @cifsFileInfo_put(%struct.cifsFileInfo*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

declare dso_local i32 @is_retryable_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
