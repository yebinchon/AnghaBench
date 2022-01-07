; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dir.c_cifs_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dir.c_cifs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_tcon = type { i64 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"parent inode = 0x%p name is: %pd and dentry = 0x%p\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"non-NULL inode in lookup\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"NULL inode in lookup\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Full path: %s inode = 0x%p\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Unexpected lookup error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @cifs_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifs_sb_info*, align 8
  %11 = alloca %struct.tcon_link*, align 8
  %12 = alloca %struct.cifs_tcon*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store %struct.inode* null, %struct.inode** %13, align 8
  store i8* null, i8** %14, align 8
  %15 = call i32 (...) @get_xid()
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @FYI, align 4
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), %struct.inode* %17, %struct.dentry* %18, %struct.dentry* %19)
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.cifs_sb_info* @CIFS_SB(i32 %23)
  store %struct.cifs_sb_info* %24, %struct.cifs_sb_info** %10, align 8
  %25 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %10, align 8
  %26 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %25)
  store %struct.tcon_link* %26, %struct.tcon_link** %11, align 8
  %27 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %28 = call i64 @IS_ERR(%struct.tcon_link* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @free_xid(i32 %31)
  %33 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %34 = call %struct.inode* @ERR_CAST(%struct.tcon_link* %33)
  %35 = bitcast %struct.inode* %34 to %struct.dentry*
  store %struct.dentry* %35, %struct.dentry** %4, align 8
  br label %147

36:                                               ; preds = %3
  %37 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %38 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %37)
  store %struct.cifs_tcon* %38, %struct.cifs_tcon** %12, align 8
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = bitcast %struct.dentry* %39 to %struct.inode*
  %41 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %42 = call i32 @check_name(%struct.inode* %40, %struct.cifs_tcon* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %36
  %47 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %48 = call i32 @cifs_put_tlink(%struct.tcon_link* %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @free_xid(i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = call %struct.inode* @ERR_PTR(i32 %51)
  %53 = bitcast %struct.inode* %52 to %struct.dentry*
  store %struct.dentry* %53, %struct.dentry** %4, align 8
  br label %147

54:                                               ; preds = %36
  %55 = load %struct.dentry*, %struct.dentry** %6, align 8
  %56 = bitcast %struct.dentry* %55 to %struct.inode*
  %57 = call i8* @build_path_from_dentry(%struct.inode* %56)
  store i8* %57, i8** %14, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %62 = call i32 @cifs_put_tlink(%struct.tcon_link* %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @free_xid(i32 %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  %67 = call %struct.inode* @ERR_PTR(i32 %66)
  %68 = bitcast %struct.inode* %67 to %struct.dentry*
  store %struct.dentry* %68, %struct.dentry** %4, align 8
  br label %147

69:                                               ; preds = %54
  %70 = load %struct.dentry*, %struct.dentry** %6, align 8
  %71 = bitcast %struct.dentry* %70 to %struct.inode*
  %72 = call i64 @d_really_is_positive(%struct.inode* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @FYI, align 4
  %76 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %80

77:                                               ; preds = %69
  %78 = load i32, i32* @FYI, align 4
  %79 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* @FYI, align 4
  %82 = load i8*, i8** %14, align 8
  %83 = load %struct.dentry*, %struct.dentry** %6, align 8
  %84 = bitcast %struct.dentry* %83 to %struct.inode*
  %85 = call i32 @d_inode(%struct.inode* %84)
  %86 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %82, i32 %85)
  %87 = load %struct.cifs_tcon*, %struct.cifs_tcon** %12, align 8
  %88 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %80
  %92 = load i8*, i8** %14, align 8
  %93 = load %struct.inode*, %struct.inode** %5, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @cifs_get_inode_info_unix(%struct.inode** %13, i8* %92, i32 %95, i32 %96)
  store i32 %97, i32* %9, align 4
  br label %105

98:                                               ; preds = %80
  %99 = load i8*, i8** %14, align 8
  %100 = load %struct.inode*, %struct.inode** %5, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @cifs_get_inode_info(%struct.inode** %13, i8* %99, i32* null, i32 %102, i32 %103, i32* null)
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %98, %91
  %106 = load i32, i32* %9, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load %struct.dentry*, %struct.dentry** %6, align 8
  %110 = bitcast %struct.dentry* %109 to %struct.inode*
  %111 = call i32 @renew_parental_timestamps(%struct.inode* %110)
  br label %135

112:                                              ; preds = %105
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @ENOENT, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.dentry*, %struct.dentry** %6, align 8
  %119 = bitcast %struct.dentry* %118 to %struct.inode*
  %120 = load i32, i32* @jiffies, align 4
  %121 = call i32 @cifs_set_time(%struct.inode* %119, i32 %120)
  store %struct.inode* null, %struct.inode** %13, align 8
  br label %134

122:                                              ; preds = %112
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @EACCES, align 4
  %125 = sub nsw i32 0, %124
  %126 = icmp ne i32 %123, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32, i32* @FYI, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %127, %122
  %132 = load i32, i32* %9, align 4
  %133 = call %struct.inode* @ERR_PTR(i32 %132)
  store %struct.inode* %133, %struct.inode** %13, align 8
  br label %134

134:                                              ; preds = %131, %117
  br label %135

135:                                              ; preds = %134, %108
  %136 = load i8*, i8** %14, align 8
  %137 = call i32 @kfree(i8* %136)
  %138 = load %struct.tcon_link*, %struct.tcon_link** %11, align 8
  %139 = call i32 @cifs_put_tlink(%struct.tcon_link* %138)
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @free_xid(i32 %140)
  %142 = load %struct.inode*, %struct.inode** %13, align 8
  %143 = load %struct.dentry*, %struct.dentry** %6, align 8
  %144 = bitcast %struct.dentry* %143 to %struct.inode*
  %145 = call %struct.inode* @d_splice_alias(%struct.inode* %142, %struct.inode* %144)
  %146 = bitcast %struct.inode* %145 to %struct.dentry*
  store %struct.dentry* %146, %struct.dentry** %4, align 8
  br label %147

147:                                              ; preds = %135, %60, %46, %30
  %148 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %148
}

declare dso_local i32 @get_xid(...) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @free_xid(i32) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @check_name(%struct.inode*, %struct.cifs_tcon*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i8* @build_path_from_dentry(%struct.inode*) #1

declare dso_local i64 @d_really_is_positive(%struct.inode*) #1

declare dso_local i32 @d_inode(%struct.inode*) #1

declare dso_local i32 @cifs_get_inode_info_unix(%struct.inode**, i8*, i32, i32) #1

declare dso_local i32 @cifs_get_inode_info(%struct.inode**, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @renew_parental_timestamps(%struct.inode*) #1

declare dso_local i32 @cifs_set_time(%struct.inode*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.inode* @d_splice_alias(%struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
