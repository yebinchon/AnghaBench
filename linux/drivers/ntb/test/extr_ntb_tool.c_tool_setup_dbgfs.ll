; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_tool.c_tool_setup_dbgfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_tool.c_tool_setup_dbgfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tool_ctx = type { i32, i32, i32, i32, i32, i32, i32, %struct.tool_ctx*, %struct.tool_ctx*, i32*, %struct.tool_ctx*, %struct.tool_ctx*, %struct.tool_ctx*, %struct.tool_ctx*, %struct.tool_ctx*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TOOL_BUF_LEN = common dso_local global i32 0, align 4
@tool_dbgfs_topdir = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"port\00", align 1
@tool_port_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@tool_link_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"db\00", align 1
@tool_db_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"db_valid_mask\00", align 1
@tool_db_valid_mask_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"db_mask\00", align 1
@tool_db_mask_fops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"db_event\00", align 1
@tool_db_event_fops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"peer_db\00", align 1
@tool_peer_db_fops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"peer_db_mask\00", align 1
@tool_peer_db_mask_fops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"spad%d\00", align 1
@tool_spad_fops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"msg%d\00", align 1
@tool_inmsg_fops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"msg_sts\00", align 1
@tool_msg_sts_fops = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"msg_inbits\00", align 1
@tool_msg_inbits_fops = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"msg_outbits\00", align 1
@tool_msg_outbits_fops = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"msg_mask\00", align 1
@tool_msg_mask_fops = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"msg_event\00", align 1
@tool_msg_event_fops = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"peer%d\00", align 1
@tool_peer_port_fops = common dso_local global i32 0, align 4
@tool_peer_link_fops = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"link_event\00", align 1
@tool_peer_link_event_fops = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"mw_trans%d\00", align 1
@tool_mw_trans_fops = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"peer_mw_trans%d\00", align 1
@tool_peer_mw_trans_fops = common dso_local global i32 0, align 4
@tool_peer_spad_fops = common dso_local global i32 0, align 4
@tool_outmsg_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tool_ctx*)* @tool_setup_dbgfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tool_setup_dbgfs(%struct.tool_ctx* %0) #0 {
  %2 = alloca %struct.tool_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.tool_ctx* %0, %struct.tool_ctx** %2, align 8
  %10 = load i32, i32* @TOOL_BUF_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32*, i32** @tool_dbgfs_topdir, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %17, i32 0, i32 9
  store i32* null, i32** %18, align 8
  store i32 1, i32* %9, align 4
  br label %388

19:                                               ; preds = %1
  %20 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %20, i32 0, i32 15
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i8* @dev_name(i32* %23)
  %25 = load i32*, i32** @tool_dbgfs_topdir, align 8
  %26 = call i8* @debugfs_create_dir(i8* %24, i32* %25)
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %28, i32 0, i32 9
  store i32* %27, i32** %29, align 8
  %30 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %30, i32 0, i32 9
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %19
  store i32 1, i32* %9, align 4
  br label %388

35:                                               ; preds = %19
  %36 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %37 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %36, i32 0, i32 9
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %40 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 384, i32* %38, %struct.tool_ctx* %39, i32* @tool_port_fops)
  %41 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %41, i32 0, i32 9
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %45 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 384, i32* %43, %struct.tool_ctx* %44, i32* @tool_link_fops)
  %46 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %47 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %46, i32 0, i32 9
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %50 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 384, i32* %48, %struct.tool_ctx* %49, i32* @tool_db_fops)
  %51 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %51, i32 0, i32 9
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %55 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 384, i32* %53, %struct.tool_ctx* %54, i32* @tool_db_valid_mask_fops)
  %56 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %57 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %56, i32 0, i32 9
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %60 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 384, i32* %58, %struct.tool_ctx* %59, i32* @tool_db_mask_fops)
  %61 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %62 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %61, i32 0, i32 9
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %65 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 384, i32* %63, %struct.tool_ctx* %64, i32* @tool_db_event_fops)
  %66 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %67 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %66, i32 0, i32 9
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %70 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 384, i32* %68, %struct.tool_ctx* %69, i32* @tool_peer_db_fops)
  %71 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %72 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %71, i32 0, i32 9
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %75 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 384, i32* %73, %struct.tool_ctx* %74, i32* @tool_peer_db_mask_fops)
  %76 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %77 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %105

80:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %101, %80
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %84 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %81
  %88 = trunc i64 %11 to i32
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @snprintf(i8* %13, i32 %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %89)
  %91 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %92 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %91, i32 0, i32 9
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %95 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %94, i32 0, i32 14
  %96 = load %struct.tool_ctx*, %struct.tool_ctx** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %96, i64 %98
  %100 = call i32 @debugfs_create_file(i8* %13, i32 384, i32* %93, %struct.tool_ctx* %99, i32* @tool_spad_fops)
  br label %101

101:                                              ; preds = %87
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %81

104:                                              ; preds = %81
  br label %105

105:                                              ; preds = %104, %35
  %106 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %107 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %160

110:                                              ; preds = %105
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %131, %110
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %114 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %111
  %118 = trunc i64 %11 to i32
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @snprintf(i8* %13, i32 %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %119)
  %121 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %122 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %121, i32 0, i32 9
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %125 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %124, i32 0, i32 13
  %126 = load %struct.tool_ctx*, %struct.tool_ctx** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %126, i64 %128
  %130 = call i32 @debugfs_create_file(i8* %13, i32 384, i32* %123, %struct.tool_ctx* %129, i32* @tool_inmsg_fops)
  br label %131

131:                                              ; preds = %117
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %111

134:                                              ; preds = %111
  %135 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %136 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %135, i32 0, i32 9
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %139 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 384, i32* %137, %struct.tool_ctx* %138, i32* @tool_msg_sts_fops)
  %140 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %141 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %140, i32 0, i32 9
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %144 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 384, i32* %142, %struct.tool_ctx* %143, i32* @tool_msg_inbits_fops)
  %145 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %146 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %145, i32 0, i32 9
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %149 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 384, i32* %147, %struct.tool_ctx* %148, i32* @tool_msg_outbits_fops)
  %150 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %151 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %150, i32 0, i32 9
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %154 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 384, i32* %152, %struct.tool_ctx* %153, i32* @tool_msg_mask_fops)
  %155 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %156 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %155, i32 0, i32 9
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %159 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 384, i32* %157, %struct.tool_ctx* %158, i32* @tool_msg_event_fops)
  br label %160

160:                                              ; preds = %134, %105
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %384, %160
  %162 = load i32, i32* %3, align 4
  %163 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %164 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %387

167:                                              ; preds = %161
  %168 = trunc i64 %11 to i32
  %169 = load i32, i32* %3, align 4
  %170 = call i32 @snprintf(i8* %13, i32 %168, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %169)
  %171 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %172 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %171, i32 0, i32 9
  %173 = load i32*, i32** %172, align 8
  %174 = call i8* @debugfs_create_dir(i8* %13, i32* %173)
  %175 = bitcast i8* %174 to i32*
  %176 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %177 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %176, i32 0, i32 8
  %178 = load %struct.tool_ctx*, %struct.tool_ctx** %177, align 8
  %179 = load i32, i32* %3, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %178, i64 %180
  %182 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %181, i32 0, i32 9
  store i32* %175, i32** %182, align 8
  %183 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %184 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %183, i32 0, i32 8
  %185 = load %struct.tool_ctx*, %struct.tool_ctx** %184, align 8
  %186 = load i32, i32* %3, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %185, i64 %187
  %189 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %188, i32 0, i32 9
  %190 = load i32*, i32** %189, align 8
  %191 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %192 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %191, i32 0, i32 8
  %193 = load %struct.tool_ctx*, %struct.tool_ctx** %192, align 8
  %194 = load i32, i32* %3, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %193, i64 %195
  %197 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 384, i32* %190, %struct.tool_ctx* %196, i32* @tool_peer_port_fops)
  %198 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %199 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %198, i32 0, i32 8
  %200 = load %struct.tool_ctx*, %struct.tool_ctx** %199, align 8
  %201 = load i32, i32* %3, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %200, i64 %202
  %204 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %203, i32 0, i32 9
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %207 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %206, i32 0, i32 8
  %208 = load %struct.tool_ctx*, %struct.tool_ctx** %207, align 8
  %209 = load i32, i32* %3, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %208, i64 %210
  %212 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 128, i32* %205, %struct.tool_ctx* %211, i32* @tool_peer_link_fops)
  %213 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %214 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %213, i32 0, i32 8
  %215 = load %struct.tool_ctx*, %struct.tool_ctx** %214, align 8
  %216 = load i32, i32* %3, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %215, i64 %217
  %219 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %218, i32 0, i32 9
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %222 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %221, i32 0, i32 8
  %223 = load %struct.tool_ctx*, %struct.tool_ctx** %222, align 8
  %224 = load i32, i32* %3, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %223, i64 %225
  %227 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 128, i32* %220, %struct.tool_ctx* %226, i32* @tool_peer_link_event_fops)
  store i32 0, i32* %4, align 4
  br label %228

228:                                              ; preds = %263, %167
  %229 = load i32, i32* %4, align 4
  %230 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %231 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %230, i32 0, i32 8
  %232 = load %struct.tool_ctx*, %struct.tool_ctx** %231, align 8
  %233 = load i32, i32* %3, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %232, i64 %234
  %236 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = icmp slt i32 %229, %237
  br i1 %238, label %239, label %266

239:                                              ; preds = %228
  %240 = trunc i64 %11 to i32
  %241 = load i32, i32* %4, align 4
  %242 = call i32 @snprintf(i8* %13, i32 %240, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 %241)
  %243 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %244 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %243, i32 0, i32 8
  %245 = load %struct.tool_ctx*, %struct.tool_ctx** %244, align 8
  %246 = load i32, i32* %3, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %245, i64 %247
  %249 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %248, i32 0, i32 9
  %250 = load i32*, i32** %249, align 8
  %251 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %252 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %251, i32 0, i32 8
  %253 = load %struct.tool_ctx*, %struct.tool_ctx** %252, align 8
  %254 = load i32, i32* %3, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %253, i64 %255
  %257 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %256, i32 0, i32 12
  %258 = load %struct.tool_ctx*, %struct.tool_ctx** %257, align 8
  %259 = load i32, i32* %4, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %258, i64 %260
  %262 = call i32 @debugfs_create_file(i8* %13, i32 384, i32* %250, %struct.tool_ctx* %261, i32* @tool_mw_trans_fops)
  br label %263

263:                                              ; preds = %239
  %264 = load i32, i32* %4, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %4, align 4
  br label %228

266:                                              ; preds = %228
  store i32 0, i32* %4, align 4
  br label %267

267:                                              ; preds = %302, %266
  %268 = load i32, i32* %4, align 4
  %269 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %270 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %269, i32 0, i32 8
  %271 = load %struct.tool_ctx*, %struct.tool_ctx** %270, align 8
  %272 = load i32, i32* %3, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %271, i64 %273
  %275 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = icmp slt i32 %268, %276
  br i1 %277, label %278, label %305

278:                                              ; preds = %267
  %279 = trunc i64 %11 to i32
  %280 = load i32, i32* %4, align 4
  %281 = call i32 @snprintf(i8* %13, i32 %279, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 %280)
  %282 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %283 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %282, i32 0, i32 8
  %284 = load %struct.tool_ctx*, %struct.tool_ctx** %283, align 8
  %285 = load i32, i32* %3, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %284, i64 %286
  %288 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %287, i32 0, i32 9
  %289 = load i32*, i32** %288, align 8
  %290 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %291 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %290, i32 0, i32 8
  %292 = load %struct.tool_ctx*, %struct.tool_ctx** %291, align 8
  %293 = load i32, i32* %3, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %292, i64 %294
  %296 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %295, i32 0, i32 11
  %297 = load %struct.tool_ctx*, %struct.tool_ctx** %296, align 8
  %298 = load i32, i32* %4, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %297, i64 %299
  %301 = call i32 @debugfs_create_file(i8* %13, i32 384, i32* %289, %struct.tool_ctx* %300, i32* @tool_peer_mw_trans_fops)
  br label %302

302:                                              ; preds = %278
  %303 = load i32, i32* %4, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %4, align 4
  br label %267

305:                                              ; preds = %267
  store i32 0, i32* %5, align 4
  br label %306

306:                                              ; preds = %341, %305
  %307 = load i32, i32* %5, align 4
  %308 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %309 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %308, i32 0, i32 8
  %310 = load %struct.tool_ctx*, %struct.tool_ctx** %309, align 8
  %311 = load i32, i32* %3, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %310, i64 %312
  %314 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 4
  %316 = icmp slt i32 %307, %315
  br i1 %316, label %317, label %344

317:                                              ; preds = %306
  %318 = trunc i64 %11 to i32
  %319 = load i32, i32* %5, align 4
  %320 = call i32 @snprintf(i8* %13, i32 %318, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %319)
  %321 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %322 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %321, i32 0, i32 8
  %323 = load %struct.tool_ctx*, %struct.tool_ctx** %322, align 8
  %324 = load i32, i32* %3, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %323, i64 %325
  %327 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %326, i32 0, i32 9
  %328 = load i32*, i32** %327, align 8
  %329 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %330 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %329, i32 0, i32 8
  %331 = load %struct.tool_ctx*, %struct.tool_ctx** %330, align 8
  %332 = load i32, i32* %3, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %331, i64 %333
  %335 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %334, i32 0, i32 10
  %336 = load %struct.tool_ctx*, %struct.tool_ctx** %335, align 8
  %337 = load i32, i32* %5, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %336, i64 %338
  %340 = call i32 @debugfs_create_file(i8* %13, i32 384, i32* %328, %struct.tool_ctx* %339, i32* @tool_peer_spad_fops)
  br label %341

341:                                              ; preds = %317
  %342 = load i32, i32* %5, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %5, align 4
  br label %306

344:                                              ; preds = %306
  store i32 0, i32* %6, align 4
  br label %345

345:                                              ; preds = %380, %344
  %346 = load i32, i32* %6, align 4
  %347 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %348 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %347, i32 0, i32 8
  %349 = load %struct.tool_ctx*, %struct.tool_ctx** %348, align 8
  %350 = load i32, i32* %3, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %349, i64 %351
  %353 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %352, i32 0, i32 6
  %354 = load i32, i32* %353, align 8
  %355 = icmp slt i32 %346, %354
  br i1 %355, label %356, label %383

356:                                              ; preds = %345
  %357 = trunc i64 %11 to i32
  %358 = load i32, i32* %6, align 4
  %359 = call i32 @snprintf(i8* %13, i32 %357, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %358)
  %360 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %361 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %360, i32 0, i32 8
  %362 = load %struct.tool_ctx*, %struct.tool_ctx** %361, align 8
  %363 = load i32, i32* %3, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %362, i64 %364
  %366 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %365, i32 0, i32 9
  %367 = load i32*, i32** %366, align 8
  %368 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %369 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %368, i32 0, i32 8
  %370 = load %struct.tool_ctx*, %struct.tool_ctx** %369, align 8
  %371 = load i32, i32* %3, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %370, i64 %372
  %374 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %373, i32 0, i32 7
  %375 = load %struct.tool_ctx*, %struct.tool_ctx** %374, align 8
  %376 = load i32, i32* %6, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %375, i64 %377
  %379 = call i32 @debugfs_create_file(i8* %13, i32 384, i32* %367, %struct.tool_ctx* %378, i32* @tool_outmsg_fops)
  br label %380

380:                                              ; preds = %356
  %381 = load i32, i32* %6, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %6, align 4
  br label %345

383:                                              ; preds = %345
  br label %384

384:                                              ; preds = %383
  %385 = load i32, i32* %3, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %3, align 4
  br label %161

387:                                              ; preds = %161
  store i32 0, i32* %9, align 4
  br label %388

388:                                              ; preds = %387, %34, %16
  %389 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %389)
  %390 = load i32, i32* %9, align 4
  switch i32 %390, label %392 [
    i32 0, label %391
    i32 1, label %391
  ]

391:                                              ; preds = %388, %388
  ret void

392:                                              ; preds = %388
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @debugfs_create_dir(i8*, i32*) #2

declare dso_local i8* @dev_name(i32*) #2

declare dso_local i32 @debugfs_create_file(i8*, i32, i32*, %struct.tool_ctx*, i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
