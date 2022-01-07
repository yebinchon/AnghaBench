; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_acl.c_ceph_pre_init_acls.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_acl.c_ceph_pre_init_acls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ceph_acl_sec_ctx = type { %struct.ceph_pagelist*, %struct.posix_acl*, %struct.posix_acl* }
%struct.ceph_pagelist = type { i32 }
%struct.posix_acl = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@XATTR_NAME_POSIX_ACL_ACCESS = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@XATTR_NAME_POSIX_ACL_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_pre_init_acls(%struct.inode* %0, i32* %1, %struct.ceph_acl_sec_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ceph_acl_sec_ctx*, align 8
  %8 = alloca %struct.posix_acl*, align 8
  %9 = alloca %struct.posix_acl*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ceph_pagelist*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.ceph_acl_sec_ctx* %2, %struct.ceph_acl_sec_ctx** %7, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store %struct.ceph_pagelist* null, %struct.ceph_pagelist** %12, align 8
  store i8* null, i8** %13, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @posix_acl_create(%struct.inode* %17, i32* %18, %struct.posix_acl** %9, %struct.posix_acl** %8)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %4, align 4
  br label %196

24:                                               ; preds = %3
  %25 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %26 = icmp ne %struct.posix_acl* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @posix_acl_equiv_mode(%struct.posix_acl* %28, i32* %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %182

34:                                               ; preds = %27
  %35 = load i32, i32* %14, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %39 = call i32 @posix_acl_release(%struct.posix_acl* %38)
  store %struct.posix_acl* null, %struct.posix_acl** %8, align 8
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %24
  %42 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %43 = icmp ne %struct.posix_acl* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %46 = icmp ne %struct.posix_acl* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %196

48:                                               ; preds = %44, %41
  %49 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %50 = icmp ne %struct.posix_acl* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %53 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @posix_acl_xattr_size(i32 %54)
  store i64 %55, i64* %10, align 8
  br label %56

56:                                               ; preds = %51, %48
  %57 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %58 = icmp ne %struct.posix_acl* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %61 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @posix_acl_xattr_size(i32 %62)
  store i64 %63, i64* %11, align 8
  br label %64

64:                                               ; preds = %59, %56
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %14, align 4
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @max(i64 %67, i64 %68)
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i8* @kmalloc(i32 %69, i32 %70)
  store i8* %71, i8** %13, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %64
  br label %182

75:                                               ; preds = %64
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call %struct.ceph_pagelist* @ceph_pagelist_alloc(i32 %76)
  store %struct.ceph_pagelist* %77, %struct.ceph_pagelist** %12, align 8
  %78 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %12, align 8
  %79 = icmp ne %struct.ceph_pagelist* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %182

81:                                               ; preds = %75
  %82 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %12, align 8
  %83 = load i64, i64* @PAGE_SIZE, align 8
  %84 = call i32 @ceph_pagelist_reserve(%struct.ceph_pagelist* %82, i64 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %182

88:                                               ; preds = %81
  %89 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %12, align 8
  %90 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %91 = icmp ne %struct.posix_acl* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %94 = icmp ne %struct.posix_acl* %93, null
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i1 [ false, %88 ], [ %94, %92 ]
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 2, i32 1
  %99 = sext i32 %98 to i64
  %100 = call i32 @ceph_pagelist_encode_32(%struct.ceph_pagelist* %89, i64 %99)
  %101 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %102 = icmp ne %struct.posix_acl* %101, null
  br i1 %102, label %103, label %135

103:                                              ; preds = %95
  %104 = load i32, i32* @XATTR_NAME_POSIX_ACL_ACCESS, align 4
  %105 = call i64 @strlen(i32 %104)
  store i64 %105, i64* %15, align 8
  %106 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %12, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* %10, align 8
  %109 = add i64 %107, %108
  %110 = add i64 %109, 8
  %111 = call i32 @ceph_pagelist_reserve(%struct.ceph_pagelist* %106, i64 %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %182

115:                                              ; preds = %103
  %116 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %12, align 8
  %117 = load i32, i32* @XATTR_NAME_POSIX_ACL_ACCESS, align 4
  %118 = load i64, i64* %15, align 8
  %119 = call i32 @ceph_pagelist_encode_string(%struct.ceph_pagelist* %116, i32 %117, i64 %118)
  %120 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = load i64, i64* %10, align 8
  %123 = call i32 @posix_acl_to_xattr(i32* @init_user_ns, %struct.posix_acl* %120, i8* %121, i64 %122)
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  br label %182

127:                                              ; preds = %115
  %128 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %12, align 8
  %129 = load i64, i64* %10, align 8
  %130 = call i32 @ceph_pagelist_encode_32(%struct.ceph_pagelist* %128, i64 %129)
  %131 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %12, align 8
  %132 = load i8*, i8** %13, align 8
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @ceph_pagelist_append(%struct.ceph_pagelist* %131, i8* %132, i64 %133)
  br label %135

135:                                              ; preds = %127, %95
  %136 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %137 = icmp ne %struct.posix_acl* %136, null
  br i1 %137, label %138, label %170

138:                                              ; preds = %135
  %139 = load i32, i32* @XATTR_NAME_POSIX_ACL_DEFAULT, align 4
  %140 = call i64 @strlen(i32 %139)
  store i64 %140, i64* %16, align 8
  %141 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %12, align 8
  %142 = load i64, i64* %16, align 8
  %143 = load i64, i64* %11, align 8
  %144 = add i64 %142, %143
  %145 = add i64 %144, 8
  %146 = call i32 @ceph_pagelist_reserve(%struct.ceph_pagelist* %141, i64 %145)
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %138
  br label %182

150:                                              ; preds = %138
  %151 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %12, align 8
  %152 = load i32, i32* @XATTR_NAME_POSIX_ACL_DEFAULT, align 4
  %153 = load i64, i64* %16, align 8
  %154 = call i32 @ceph_pagelist_encode_string(%struct.ceph_pagelist* %151, i32 %152, i64 %153)
  store i32 %154, i32* %14, align 4
  %155 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %156 = load i8*, i8** %13, align 8
  %157 = load i64, i64* %11, align 8
  %158 = call i32 @posix_acl_to_xattr(i32* @init_user_ns, %struct.posix_acl* %155, i8* %156, i64 %157)
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %150
  br label %182

162:                                              ; preds = %150
  %163 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %12, align 8
  %164 = load i64, i64* %11, align 8
  %165 = call i32 @ceph_pagelist_encode_32(%struct.ceph_pagelist* %163, i64 %164)
  %166 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %12, align 8
  %167 = load i8*, i8** %13, align 8
  %168 = load i64, i64* %11, align 8
  %169 = call i32 @ceph_pagelist_append(%struct.ceph_pagelist* %166, i8* %167, i64 %168)
  br label %170

170:                                              ; preds = %162, %135
  %171 = load i8*, i8** %13, align 8
  %172 = call i32 @kfree(i8* %171)
  %173 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %174 = load %struct.ceph_acl_sec_ctx*, %struct.ceph_acl_sec_ctx** %7, align 8
  %175 = getelementptr inbounds %struct.ceph_acl_sec_ctx, %struct.ceph_acl_sec_ctx* %174, i32 0, i32 2
  store %struct.posix_acl* %173, %struct.posix_acl** %175, align 8
  %176 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %177 = load %struct.ceph_acl_sec_ctx*, %struct.ceph_acl_sec_ctx** %7, align 8
  %178 = getelementptr inbounds %struct.ceph_acl_sec_ctx, %struct.ceph_acl_sec_ctx* %177, i32 0, i32 1
  store %struct.posix_acl* %176, %struct.posix_acl** %178, align 8
  %179 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %12, align 8
  %180 = load %struct.ceph_acl_sec_ctx*, %struct.ceph_acl_sec_ctx** %7, align 8
  %181 = getelementptr inbounds %struct.ceph_acl_sec_ctx, %struct.ceph_acl_sec_ctx* %180, i32 0, i32 0
  store %struct.ceph_pagelist* %179, %struct.ceph_pagelist** %181, align 8
  store i32 0, i32* %4, align 4
  br label %196

182:                                              ; preds = %161, %149, %126, %114, %87, %80, %74, %33
  %183 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %184 = call i32 @posix_acl_release(%struct.posix_acl* %183)
  %185 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %186 = call i32 @posix_acl_release(%struct.posix_acl* %185)
  %187 = load i8*, i8** %13, align 8
  %188 = call i32 @kfree(i8* %187)
  %189 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %12, align 8
  %190 = icmp ne %struct.ceph_pagelist* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %182
  %192 = load %struct.ceph_pagelist*, %struct.ceph_pagelist** %12, align 8
  %193 = call i32 @ceph_pagelist_release(%struct.ceph_pagelist* %192)
  br label %194

194:                                              ; preds = %191, %182
  %195 = load i32, i32* %14, align 4
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %194, %170, %47, %22
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local i32 @posix_acl_create(%struct.inode*, i32*, %struct.posix_acl**, %struct.posix_acl**) #1

declare dso_local i32 @posix_acl_equiv_mode(%struct.posix_acl*, i32*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i64 @posix_acl_xattr_size(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @max(i64, i64) #1

declare dso_local %struct.ceph_pagelist* @ceph_pagelist_alloc(i32) #1

declare dso_local i32 @ceph_pagelist_reserve(%struct.ceph_pagelist*, i64) #1

declare dso_local i32 @ceph_pagelist_encode_32(%struct.ceph_pagelist*, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @ceph_pagelist_encode_string(%struct.ceph_pagelist*, i32, i64) #1

declare dso_local i32 @posix_acl_to_xattr(i32*, %struct.posix_acl*, i8*, i64) #1

declare dso_local i32 @ceph_pagelist_append(%struct.ceph_pagelist*, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @ceph_pagelist_release(%struct.ceph_pagelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
