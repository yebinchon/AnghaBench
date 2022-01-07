; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.exfat_sb_info*, i32, i32*, i32*, i32, i32 }
%struct.exfat_sb_info = type { %struct.TYPE_5__, i8*, i8*, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_4__ = type { i64 }
%struct.inode = type { i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SB_NODIRATIME = common dso_local global i32 0, align 4
@EXFAT_SUPER_MAGIC = common dso_local global i32 0, align 4
@exfat_sops = common dso_local global i32 0, align 4
@exfat_export_ops = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"[EXFAT] ffsMountVol failed\0A\00", align 1
@EXFAT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"cp%d\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"[EXFAT] Codepage %s not found\0A\00", align 1
@EXFAT_ROOT_INO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"[EXFAT] Getting the root inode failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @exfat_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exfat_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.exfat_sb_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [50 x i8], align 16
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %8, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.exfat_sb_info* @kvzalloc(i32 48, i32 %14)
  store %struct.exfat_sb_info* %15, %struct.exfat_sb_info** %9, align 8
  %16 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %9, align 8
  %17 = icmp ne %struct.exfat_sb_info* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %163

21:                                               ; preds = %3
  %22 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %9, align 8
  %23 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %22, i32 0, i32 4
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %9, align 8
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = getelementptr inbounds %struct.super_block, %struct.super_block* %26, i32 0, i32 1
  store %struct.exfat_sb_info* %25, %struct.exfat_sb_info** %27, align 8
  %28 = load i32, i32* @SB_NODIRATIME, align 4
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @EXFAT_SUPER_MAGIC, align 4
  %34 = load %struct.super_block*, %struct.super_block** %5, align 8
  %35 = getelementptr inbounds %struct.super_block, %struct.super_block* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 4
  store i32* @exfat_sops, i32** %37, align 8
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 3
  store i32* @exfat_export_ops, i32** %39, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %9, align 8
  %43 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %42, i32 0, i32 0
  %44 = call i64 @parse_options(i8* %40, i32 %41, i32* %10, %struct.TYPE_5__* %43)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %21
  br label %150

48:                                               ; preds = %21
  %49 = load %struct.super_block*, %struct.super_block** %5, align 8
  %50 = call i32 @setup_dops(%struct.super_block* %49)
  %51 = load i64, i64* @EIO, align 8
  %52 = sub nsw i64 0, %51
  store i64 %52, i64* %12, align 8
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = call i32 @sb_min_blocksize(%struct.super_block* %53, i32 512)
  %55 = load %struct.super_block*, %struct.super_block** %5, align 8
  %56 = getelementptr inbounds %struct.super_block, %struct.super_block* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 8
  %57 = load %struct.super_block*, %struct.super_block** %5, align 8
  %58 = call i32 @ffsMountVol(%struct.super_block* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %48
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %61
  br label %150

67:                                               ; preds = %48
  %68 = load %struct.super_block*, %struct.super_block** %5, align 8
  %69 = call i32 @exfat_hash_init(%struct.super_block* %68)
  %70 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %9, align 8
  %71 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @EXFAT, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %67
  %77 = load i64, i64* @EINVAL, align 8
  %78 = sub nsw i64 0, %77
  store i64 %78, i64* %12, align 8
  %79 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %80 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %9, align 8
  %81 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @sprintf(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %86 = call i8* @load_nls(i8* %85)
  %87 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %9, align 8
  %88 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %9, align 8
  %90 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %76
  %94 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %95 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  br label %147

96:                                               ; preds = %76
  br label %97

97:                                               ; preds = %96, %67
  %98 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %9, align 8
  %99 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i8* @load_nls(i8* %101)
  %103 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %9, align 8
  %104 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %12, align 8
  %108 = load %struct.super_block*, %struct.super_block** %5, align 8
  %109 = call %struct.inode* @new_inode(%struct.super_block* %108)
  store %struct.inode* %109, %struct.inode** %8, align 8
  %110 = load %struct.inode*, %struct.inode** %8, align 8
  %111 = icmp ne %struct.inode* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %97
  br label %147

113:                                              ; preds = %97
  %114 = load i32, i32* @EXFAT_ROOT_INO, align 4
  %115 = load %struct.inode*, %struct.inode** %8, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load %struct.inode*, %struct.inode** %8, align 8
  %118 = call i32 @SET_IVERSION(%struct.inode* %117, i32 1)
  %119 = load %struct.inode*, %struct.inode** %8, align 8
  %120 = call i64 @exfat_read_root(%struct.inode* %119)
  store i64 %120, i64* %12, align 8
  %121 = load i64, i64* %12, align 8
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  br label %147

124:                                              ; preds = %113
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %12, align 8
  %128 = load %struct.inode*, %struct.inode** %8, align 8
  %129 = load %struct.inode*, %struct.inode** %8, align 8
  %130 = call %struct.TYPE_6__* @EXFAT_I(%struct.inode* %129)
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @exfat_attach(%struct.inode* %128, i32 %132)
  %134 = load %struct.inode*, %struct.inode** %8, align 8
  %135 = call i32 @insert_inode_hash(%struct.inode* %134)
  %136 = load %struct.inode*, %struct.inode** %8, align 8
  %137 = call i32 @d_make_root(%struct.inode* %136)
  %138 = load %struct.super_block*, %struct.super_block** %5, align 8
  %139 = getelementptr inbounds %struct.super_block, %struct.super_block* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.super_block*, %struct.super_block** %5, align 8
  %141 = getelementptr inbounds %struct.super_block, %struct.super_block* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %124
  %145 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %147

146:                                              ; preds = %124
  store i32 0, i32* %4, align 4
  br label %163

147:                                              ; preds = %144, %123, %112, %93
  %148 = load %struct.super_block*, %struct.super_block** %5, align 8
  %149 = call i32 @ffsUmountVol(%struct.super_block* %148)
  br label %150

150:                                              ; preds = %147, %66, %47
  %151 = load %struct.inode*, %struct.inode** %8, align 8
  %152 = icmp ne %struct.inode* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.inode*, %struct.inode** %8, align 8
  %155 = call i32 @iput(%struct.inode* %154)
  br label %156

156:                                              ; preds = %153, %150
  %157 = load %struct.super_block*, %struct.super_block** %5, align 8
  %158 = getelementptr inbounds %struct.super_block, %struct.super_block* %157, i32 0, i32 1
  store %struct.exfat_sb_info* null, %struct.exfat_sb_info** %158, align 8
  %159 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %9, align 8
  %160 = call i32 @exfat_free_super(%struct.exfat_sb_info* %159)
  %161 = load i64, i64* %12, align 8
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %156, %146, %18
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.exfat_sb_info* @kvzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @parse_options(i8*, i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @setup_dops(%struct.super_block*) #1

declare dso_local i32 @sb_min_blocksize(%struct.super_block*, i32) #1

declare dso_local i32 @ffsMountVol(%struct.super_block*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @exfat_hash_init(%struct.super_block*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @load_nls(i8*) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @SET_IVERSION(%struct.inode*, i32) #1

declare dso_local i64 @exfat_read_root(%struct.inode*) #1

declare dso_local i32 @exfat_attach(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_6__* @EXFAT_I(%struct.inode*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @d_make_root(%struct.inode*) #1

declare dso_local i32 @ffsUmountVol(%struct.super_block*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @exfat_free_super(%struct.exfat_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
