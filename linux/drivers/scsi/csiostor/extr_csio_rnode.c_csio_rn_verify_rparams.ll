; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c_csio_rn_verify_rparams.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_rnode.c_csio_rn_verify_rparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_lnode = type { i32 }
%struct.csio_rnode = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fcoe_rdev_entry = type { i32, i32, i32, i32, i32, i32, i32, i32* }

@CSIO_RNFR_FABRIC = common dso_local global i32 0, align 4
@CSIO_DID_MASK = common dso_local global i32 0, align 4
@FC_FID_FLOGI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ssni:x%x invalid fabric portid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CSIO_LNF_NPIVSUPP = common dso_local global i32 0, align 4
@CSIO_RNFR_NS = common dso_local global i32 0, align 4
@FC_FID_DIR_SERV = common dso_local global i32 0, align 4
@CSIO_RNFR_NPORT = common dso_local global i32 0, align 4
@PRLI_ACC_RCVD = common dso_local global i32 0, align 4
@PRLI_RCVD = common dso_local global i32 0, align 4
@FCP_SPPF_OVLY_ALLOW = common dso_local global i32 0, align 4
@FCP_SPPF_RETRY = common dso_local global i32 0, align 4
@FCP_SPPF_CONF_COMPL = common dso_local global i32 0, align 4
@CSIO_RNFR_TARGET = common dso_local global i32 0, align 4
@CSIO_RNFR_INITIATOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"ssni:x%x invalid rport type recv x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"ssni:x%x invalid wwnn received from rport did:x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"ssni:x%x invalid wwpn received from rport did:x%x\0A\00", align 1
@FC_CPC_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_lnode*, %struct.csio_rnode*, %struct.fcoe_rdev_entry*)* @csio_rn_verify_rparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_rn_verify_rparams(%struct.csio_lnode* %0, %struct.csio_rnode* %1, %struct.fcoe_rdev_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.csio_lnode*, align 8
  %6 = alloca %struct.csio_rnode*, align 8
  %7 = alloca %struct.fcoe_rdev_entry*, align 8
  %8 = alloca [8 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.csio_lnode* %0, %struct.csio_lnode** %5, align 8
  store %struct.csio_rnode* %1, %struct.csio_rnode** %6, align 8
  store %struct.fcoe_rdev_entry* %2, %struct.fcoe_rdev_entry** %7, align 8
  %12 = load %struct.fcoe_rdev_entry*, %struct.fcoe_rdev_entry** %7, align 8
  %13 = getelementptr inbounds %struct.fcoe_rdev_entry, %struct.fcoe_rdev_entry* %12, i32 0, i32 7
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32* %15, i32** %11, align 8
  %16 = load %struct.fcoe_rdev_entry*, %struct.fcoe_rdev_entry** %7, align 8
  %17 = getelementptr inbounds %struct.fcoe_rdev_entry, %struct.fcoe_rdev_entry* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @FW_RDEV_WR_RPORT_TYPE_GET(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %153 [
    i32 131, label %21
    i32 130, label %53
    i32 129, label %73
    i32 128, label %73
    i32 132, label %150
    i32 133, label %150
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* @CSIO_RNFR_FABRIC, align 4
  %23 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %24 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ntohl(i32 %26)
  %28 = ashr i32 %27, 8
  %29 = load i32, i32* @CSIO_DID_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @FC_FID_FLOGI, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %21
  %34 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %35 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %36 = call i32 @csio_rn_flowid(%struct.csio_rnode* %35)
  %37 = call i32 (%struct.csio_lnode*, i8*, i32, ...) @csio_ln_err(%struct.csio_lnode* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %251

40:                                               ; preds = %21
  %41 = load %struct.fcoe_rdev_entry*, %struct.fcoe_rdev_entry** %7, align 8
  %42 = getelementptr inbounds %struct.fcoe_rdev_entry, %struct.fcoe_rdev_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @FW_RDEV_WR_NPIV_GET(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* @CSIO_LNF_NPIVSUPP, align 4
  %48 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %49 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %40
  br label %161

53:                                               ; preds = %3
  %54 = load i32, i32* @CSIO_RNFR_NS, align 4
  %55 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %56 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ntohl(i32 %58)
  %60 = ashr i32 %59, 8
  %61 = load i32, i32* @CSIO_DID_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @FC_FID_DIR_SERV, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %53
  %66 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %67 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %68 = call i32 @csio_rn_flowid(%struct.csio_rnode* %67)
  %69 = call i32 (%struct.csio_lnode*, i8*, i32, ...) @csio_ln_err(%struct.csio_lnode* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %251

72:                                               ; preds = %53
  br label %161

73:                                               ; preds = %3, %3
  %74 = load i32, i32* @CSIO_RNFR_NPORT, align 4
  %75 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %76 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.fcoe_rdev_entry*, %struct.fcoe_rdev_entry** %7, align 8
  %78 = getelementptr inbounds %struct.fcoe_rdev_entry, %struct.fcoe_rdev_entry* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PRLI_ACC_RCVD, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %73
  %83 = load %struct.fcoe_rdev_entry*, %struct.fcoe_rdev_entry** %7, align 8
  %84 = getelementptr inbounds %struct.fcoe_rdev_entry, %struct.fcoe_rdev_entry* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @PRLI_RCVD, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %149

88:                                               ; preds = %82, %73
  %89 = load %struct.fcoe_rdev_entry*, %struct.fcoe_rdev_entry** %7, align 8
  %90 = getelementptr inbounds %struct.fcoe_rdev_entry, %struct.fcoe_rdev_entry* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @FW_RDEV_WR_TASK_RETRY_ID_GET(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i32, i32* @FCP_SPPF_OVLY_ALLOW, align 4
  %96 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %97 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %88
  %101 = load %struct.fcoe_rdev_entry*, %struct.fcoe_rdev_entry** %7, align 8
  %102 = getelementptr inbounds %struct.fcoe_rdev_entry, %struct.fcoe_rdev_entry* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @FW_RDEV_WR_RETRY_GET(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load i32, i32* @FCP_SPPF_RETRY, align 4
  %108 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %109 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106, %100
  %113 = load %struct.fcoe_rdev_entry*, %struct.fcoe_rdev_entry** %7, align 8
  %114 = getelementptr inbounds %struct.fcoe_rdev_entry, %struct.fcoe_rdev_entry* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @FW_RDEV_WR_CONF_CMPL_GET(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load i32, i32* @FCP_SPPF_CONF_COMPL, align 4
  %120 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %121 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %118, %112
  %125 = load %struct.fcoe_rdev_entry*, %struct.fcoe_rdev_entry** %7, align 8
  %126 = getelementptr inbounds %struct.fcoe_rdev_entry, %struct.fcoe_rdev_entry* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @FW_RDEV_WR_TGT_GET(i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = load i32, i32* @CSIO_RNFR_TARGET, align 4
  %132 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %133 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %130, %124
  %137 = load %struct.fcoe_rdev_entry*, %struct.fcoe_rdev_entry** %7, align 8
  %138 = getelementptr inbounds %struct.fcoe_rdev_entry, %struct.fcoe_rdev_entry* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @FW_RDEV_WR_INI_GET(i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = load i32, i32* @CSIO_RNFR_INITIATOR, align 4
  %144 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %145 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %142, %136
  br label %149

149:                                              ; preds = %148, %82
  br label %161

150:                                              ; preds = %3, %3
  %151 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %152 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %151, i32 0, i32 2
  store i32 0, i32* %152, align 8
  br label %161

153:                                              ; preds = %3
  %154 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %155 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %156 = call i32 @csio_rn_flowid(%struct.csio_rnode* %155)
  %157 = load i32, i32* %9, align 4
  %158 = call i32 (%struct.csio_lnode*, i8*, i32, ...) @csio_ln_err(%struct.csio_lnode* %154, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %156, i32 %157)
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %4, align 4
  br label %251

161:                                              ; preds = %150, %149, %72, %52
  %162 = load i32, i32* %9, align 4
  %163 = icmp eq i32 %162, 128
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %9, align 4
  %166 = icmp eq i32 %165, 130
  br i1 %166, label %167, label %208

167:                                              ; preds = %164, %161
  %168 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %169 = call i32 @memset(i32* %168, i32 0, i32 8)
  %170 = load %struct.fcoe_rdev_entry*, %struct.fcoe_rdev_entry** %7, align 8
  %171 = getelementptr inbounds %struct.fcoe_rdev_entry, %struct.fcoe_rdev_entry* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %174 = call i32 @memcmp(i32 %172, i32* %173, i32 8)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %188, label %176

176:                                              ; preds = %167
  %177 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %178 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %179 = call i32 @csio_rn_flowid(%struct.csio_rnode* %178)
  %180 = load i32*, i32** %11, align 8
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @ntohl(i32 %181)
  %183 = load i32, i32* @CSIO_DID_MASK, align 4
  %184 = and i32 %182, %183
  %185 = call i32 (%struct.csio_lnode*, i8*, i32, ...) @csio_ln_err(%struct.csio_lnode* %177, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %179, i32 %184)
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %4, align 4
  br label %251

188:                                              ; preds = %167
  %189 = load %struct.fcoe_rdev_entry*, %struct.fcoe_rdev_entry** %7, align 8
  %190 = getelementptr inbounds %struct.fcoe_rdev_entry, %struct.fcoe_rdev_entry* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %193 = call i32 @memcmp(i32 %191, i32* %192, i32 8)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %207, label %195

195:                                              ; preds = %188
  %196 = load %struct.csio_lnode*, %struct.csio_lnode** %5, align 8
  %197 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %198 = call i32 @csio_rn_flowid(%struct.csio_rnode* %197)
  %199 = load i32*, i32** %11, align 8
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @ntohl(i32 %200)
  %202 = load i32, i32* @CSIO_DID_MASK, align 4
  %203 = and i32 %201, %202
  %204 = call i32 (%struct.csio_lnode*, i8*, i32, ...) @csio_ln_err(%struct.csio_lnode* %196, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %198, i32 %203)
  %205 = load i32, i32* @EINVAL, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %4, align 4
  br label %251

207:                                              ; preds = %188
  br label %208

208:                                              ; preds = %207, %164
  %209 = load i32*, i32** %11, align 8
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @ntohl(i32 %210)
  %212 = ashr i32 %211, 8
  %213 = load i32, i32* @CSIO_DID_MASK, align 4
  %214 = and i32 %212, %213
  %215 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %216 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 8
  %217 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %218 = call i32 @csio_rn_wwnn(%struct.csio_rnode* %217)
  %219 = load %struct.fcoe_rdev_entry*, %struct.fcoe_rdev_entry** %7, align 8
  %220 = getelementptr inbounds %struct.fcoe_rdev_entry, %struct.fcoe_rdev_entry* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @memcpy(i32 %218, i32 %221, i32 8)
  %223 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %224 = call i32 @csio_rn_wwpn(%struct.csio_rnode* %223)
  %225 = load %struct.fcoe_rdev_entry*, %struct.fcoe_rdev_entry** %7, align 8
  %226 = getelementptr inbounds %struct.fcoe_rdev_entry, %struct.fcoe_rdev_entry* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @memcpy(i32 %224, i32 %227, i32 8)
  %229 = load %struct.fcoe_rdev_entry*, %struct.fcoe_rdev_entry** %7, align 8
  %230 = getelementptr inbounds %struct.fcoe_rdev_entry, %struct.fcoe_rdev_entry* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %233 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  store i32 %231, i32* %235, align 8
  %236 = load %struct.fcoe_rdev_entry*, %struct.fcoe_rdev_entry** %7, align 8
  %237 = getelementptr inbounds %struct.fcoe_rdev_entry, %struct.fcoe_rdev_entry* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @FW_RDEV_WR_CLASS_GET(i32 %238)
  store i32 %239, i32* %10, align 4
  %240 = load i32, i32* @FC_CPC_VALID, align 4
  %241 = call i32 @htons(i32 %240)
  %242 = load %struct.csio_rnode*, %struct.csio_rnode** %6, align 8
  %243 = getelementptr inbounds %struct.csio_rnode, %struct.csio_rnode* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %244, align 8
  %246 = load i32, i32* %10, align 4
  %247 = sub nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 0
  store i32 %241, i32* %250, align 4
  store i32 0, i32* %4, align 4
  br label %251

251:                                              ; preds = %208, %195, %176, %153, %65, %33
  %252 = load i32, i32* %4, align 4
  ret i32 %252
}

declare dso_local i32 @FW_RDEV_WR_RPORT_TYPE_GET(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @csio_ln_err(%struct.csio_lnode*, i8*, i32, ...) #1

declare dso_local i32 @csio_rn_flowid(%struct.csio_rnode*) #1

declare dso_local i32 @FW_RDEV_WR_NPIV_GET(i32) #1

declare dso_local i32 @FW_RDEV_WR_TASK_RETRY_ID_GET(i32) #1

declare dso_local i32 @FW_RDEV_WR_RETRY_GET(i32) #1

declare dso_local i32 @FW_RDEV_WR_CONF_CMPL_GET(i32) #1

declare dso_local i32 @FW_RDEV_WR_TGT_GET(i32) #1

declare dso_local i32 @FW_RDEV_WR_INI_GET(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @csio_rn_wwnn(%struct.csio_rnode*) #1

declare dso_local i32 @csio_rn_wwpn(%struct.csio_rnode*) #1

declare dso_local i32 @FW_RDEV_WR_CLASS_GET(i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
