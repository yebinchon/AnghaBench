; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_xattr.c_init_inode_xattrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_xattr.c_init_inode_xattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.erofs_inode = type { i32, i32, i32, i32*, i64, i32 }
%struct.xattr_iter = type { i64, i64, i8*, i32 }
%struct.erofs_xattr_ibody_header = type { i32 }
%struct.erofs_sb_info = type { i32 }

@EROFS_I_EA_INITED_BIT = common dso_local global i32 0, align 4
@EROFS_I_BL_XATTR_BIT = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"xattr_isize %d of nid %llu is not supported yet\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"bogus xattr ibody @ nid %llu\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EROFS_BLKSIZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @init_inode_xattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_inode_xattrs(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.erofs_inode*, align 8
  %5 = alloca %struct.xattr_iter, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.erofs_xattr_ibody_header*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.erofs_sb_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call %struct.erofs_inode* @EROFS_I(%struct.inode* %12)
  store %struct.erofs_inode* %13, %struct.erofs_inode** %4, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @EROFS_I_EA_INITED_BIT, align 4
  %15 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %16 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %15, i32 0, i32 2
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %239

20:                                               ; preds = %1
  %21 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %22 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %21, i32 0, i32 2
  %23 = load i32, i32* @EROFS_I_BL_XATTR_BIT, align 4
  %24 = load i32, i32* @TASK_KILLABLE, align 4
  %25 = call i64 @wait_on_bit_lock(i32* %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @ERESTARTSYS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %239

30:                                               ; preds = %20
  %31 = load i32, i32* @EROFS_I_EA_INITED_BIT, align 4
  %32 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %33 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %32, i32 0, i32 2
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %233

37:                                               ; preds = %30
  %38 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %39 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = icmp eq i64 %41, 4
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load %struct.super_block*, %struct.super_block** %45, align 8
  %47 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %48 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %51 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (%struct.super_block*, i8*, i32, ...) @erofs_err(%struct.super_block* %46, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %11, align 4
  br label %233

56:                                               ; preds = %37
  %57 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %58 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = icmp ult i64 %60, 4
  br i1 %61, label %62, label %81

62:                                               ; preds = %56
  %63 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %64 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load %struct.inode*, %struct.inode** %3, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load %struct.super_block*, %struct.super_block** %69, align 8
  %71 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %72 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (%struct.super_block*, i8*, i32, ...) @erofs_err(%struct.super_block* %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = call i32 @DBG_BUGON(i32 1)
  %76 = load i32, i32* @EFSCORRUPTED, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %11, align 4
  br label %233

78:                                               ; preds = %62
  %79 = load i32, i32* @ENOATTR, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %11, align 4
  br label %233

81:                                               ; preds = %56
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.inode*, %struct.inode** %3, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load %struct.super_block*, %struct.super_block** %84, align 8
  store %struct.super_block* %85, %struct.super_block** %8, align 8
  %86 = load %struct.super_block*, %struct.super_block** %8, align 8
  %87 = call %struct.erofs_sb_info* @EROFS_SB(%struct.super_block* %86)
  store %struct.erofs_sb_info* %87, %struct.erofs_sb_info** %9, align 8
  %88 = load %struct.erofs_sb_info*, %struct.erofs_sb_info** %9, align 8
  %89 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %90 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @iloc(%struct.erofs_sb_info* %88, i32 %91)
  %93 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %94 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = call i32 @erofs_blknr(i64 %96)
  %98 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 3
  store i32 %97, i32* %98, align 8
  %99 = load %struct.erofs_sb_info*, %struct.erofs_sb_info** %9, align 8
  %100 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %101 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @iloc(%struct.erofs_sb_info* %99, i32 %102)
  %104 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %105 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %103, %106
  %108 = call i64 @erofs_blkoff(i64 %107)
  %109 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 0
  store i64 %108, i64* %109, align 8
  %110 = load %struct.super_block*, %struct.super_block** %8, align 8
  %111 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @erofs_get_meta_page(%struct.super_block* %110, i32 %112)
  %114 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 2
  store i8* %113, i8** %114, align 8
  %115 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @IS_ERR(i8* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %82
  %120 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @PTR_ERR(i8* %121)
  store i32 %122, i32* %11, align 4
  br label %233

123:                                              ; preds = %82
  %124 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @kmap(i8* %125)
  %127 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 1
  store i64 %126, i64* %127, align 8
  store i32 0, i32* %10, align 4
  %128 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %129, %131
  %133 = inttoptr i64 %132 to %struct.erofs_xattr_ibody_header*
  store %struct.erofs_xattr_ibody_header* %133, %struct.erofs_xattr_ibody_header** %7, align 8
  %134 = load %struct.erofs_xattr_ibody_header*, %struct.erofs_xattr_ibody_header** %7, align 8
  %135 = getelementptr inbounds %struct.erofs_xattr_ibody_header, %struct.erofs_xattr_ibody_header* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %138 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %140 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @GFP_KERNEL, align 4
  %143 = call i32* @kmalloc_array(i32 %141, i32 4, i32 %142)
  %144 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %145 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %144, i32 0, i32 3
  store i32* %143, i32** %145, align 8
  %146 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %147 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %155, label %150

150:                                              ; preds = %123
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @xattr_iter_end(%struct.xattr_iter* %5, i32 %151)
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %11, align 4
  br label %233

155:                                              ; preds = %123
  %156 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %157, 4
  store i64 %158, i64* %156, align 8
  store i32 0, i32* %6, align 4
  br label %159

159:                                              ; preds = %223, %155
  %160 = load i32, i32* %6, align 4
  %161 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %162 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp ult i32 %160, %163
  br i1 %164, label %165, label %226

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @EROFS_BLKSIZ, align 8
  %169 = icmp sge i64 %167, %168
  br i1 %169, label %170, label %205

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @EROFS_BLKSIZ, align 8
  %174 = icmp ne i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @DBG_BUGON(i32 %175)
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @xattr_iter_end(%struct.xattr_iter* %5, i32 %177)
  %179 = load %struct.super_block*, %struct.super_block** %8, align 8
  %180 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 8
  %183 = call i8* @erofs_get_meta_page(%struct.super_block* %179, i32 %182)
  %184 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 2
  store i8* %183, i8** %184, align 8
  %185 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = call i64 @IS_ERR(i8* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %170
  %190 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %191 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @kfree(i32* %192)
  %194 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %195 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %194, i32 0, i32 3
  store i32* null, i32** %195, align 8
  %196 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 2
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @PTR_ERR(i8* %197)
  store i32 %198, i32* %11, align 4
  br label %233

199:                                              ; preds = %170
  %200 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = call i64 @kmap_atomic(i8* %201)
  %203 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 1
  store i64 %202, i64* %203, align 8
  store i32 1, i32* %10, align 4
  %204 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 0
  store i64 0, i64* %204, align 8
  br label %205

205:                                              ; preds = %199, %165
  %206 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %207, %209
  %211 = inttoptr i64 %210 to i32*
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @le32_to_cpu(i32 %212)
  %214 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %215 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %214, i32 0, i32 3
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %6, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 %213, i32* %219, align 4
  %220 = getelementptr inbounds %struct.xattr_iter, %struct.xattr_iter* %5, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = add i64 %221, 4
  store i64 %222, i64* %220, align 8
  br label %223

223:                                              ; preds = %205
  %224 = load i32, i32* %6, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %6, align 4
  br label %159

226:                                              ; preds = %159
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @xattr_iter_end(%struct.xattr_iter* %5, i32 %227)
  %229 = load i32, i32* @EROFS_I_EA_INITED_BIT, align 4
  %230 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %231 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %230, i32 0, i32 2
  %232 = call i32 @set_bit(i32 %229, i32* %231)
  br label %233

233:                                              ; preds = %226, %189, %150, %119, %78, %67, %43, %36
  %234 = load i32, i32* @EROFS_I_BL_XATTR_BIT, align 4
  %235 = load %struct.erofs_inode*, %struct.erofs_inode** %4, align 8
  %236 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %235, i32 0, i32 2
  %237 = call i32 @clear_and_wake_up_bit(i32 %234, i32* %236)
  %238 = load i32, i32* %11, align 4
  store i32 %238, i32* %2, align 4
  br label %239

239:                                              ; preds = %233, %27, %19
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local %struct.erofs_inode* @EROFS_I(%struct.inode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @wait_on_bit_lock(i32*, i32, i32) #1

declare dso_local i32 @erofs_err(%struct.super_block*, i8*, i32, ...) #1

declare dso_local i32 @DBG_BUGON(i32) #1

declare dso_local %struct.erofs_sb_info* @EROFS_SB(%struct.super_block*) #1

declare dso_local i32 @erofs_blknr(i64) #1

declare dso_local i64 @iloc(%struct.erofs_sb_info*, i32) #1

declare dso_local i64 @erofs_blkoff(i64) #1

declare dso_local i8* @erofs_get_meta_page(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @kmap(i8*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @xattr_iter_end(%struct.xattr_iter*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @kmap_atomic(i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_and_wake_up_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
