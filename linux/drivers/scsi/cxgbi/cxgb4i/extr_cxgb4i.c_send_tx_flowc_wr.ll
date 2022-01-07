; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_send_tx_flowc_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_send_tx_flowc_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.sk_buff = type { i64 }
%struct.fw_flowc_wr = type { %struct.TYPE_3__*, i8*, i8* }
%struct.TYPE_3__ = type { i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@FW_FLOWC_WR = common dso_local global i32 0, align 4
@FW_FLOWC_MNEM_PFNVFN = common dso_local global i64 0, align 8
@FW_FLOWC_MNEM_CH = common dso_local global i64 0, align 8
@FW_FLOWC_MNEM_PORT = common dso_local global i64 0, align 8
@FW_FLOWC_MNEM_IQID = common dso_local global i64 0, align 8
@FW_FLOWC_MNEM_SNDNXT = common dso_local global i64 0, align 8
@FW_FLOWC_MNEM_RCVNXT = common dso_local global i64 0, align 8
@FW_FLOWC_MNEM_SNDBUF = common dso_local global i64 0, align 8
@FW_FLOWC_MNEM_MSS = common dso_local global i64 0, align 8
@FW_FLOWC_MNEM_TXDATAPLEN_MAX = common dso_local global i64 0, align 8
@CPL_PRIORITY_DATA = common dso_local global i32 0, align 4
@CXGBI_DBG_TOE = common dso_local global i32 0, align 4
@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"csk 0x%p, tid 0x%x, %u,%u,%u,%u,%u,%u,%u.\0A\00", align 1
@CPL_L2T_VLAN_NONE = common dso_local global i32 0, align 4
@FW_FLOWC_MNEM_DCBPRIO = common dso_local global i64 0, align 8
@VLAN_PRIO_MASK = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_sock*)* @send_tx_flowc_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_tx_flowc_wr(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca %struct.cxgbi_sock*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.fw_flowc_wr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %2, align 8
  %8 = call i32 @tx_flowc_wr_credits(i32* %5, i32* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.sk_buff* @alloc_wr(i32 %9, i32 0, i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %3, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.fw_flowc_wr*
  store %struct.fw_flowc_wr* %15, %struct.fw_flowc_wr** %4, align 8
  %16 = load i32, i32* @FW_FLOWC_WR, align 4
  %17 = call i32 @FW_WR_OP_V(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @FW_FLOWC_WR_NPARAMS_V(i32 %18)
  %20 = or i32 %17, %19
  %21 = call i8* @htonl(i32 %20)
  %22 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %23 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @FW_WR_LEN16_V(i32 %24)
  %26 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %27 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @FW_WR_FLOWID_V(i32 %28)
  %30 = or i32 %25, %29
  %31 = call i8* @htonl(i32 %30)
  %32 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %33 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i64, i64* @FW_FLOWC_MNEM_PFNVFN, align 8
  %35 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %36 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i64 %34, i64* %39, align 8
  %40 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %41 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %40, i32 0, i32 7
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @htonl(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %48 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 8
  %52 = load i64, i64* @FW_FLOWC_MNEM_CH, align 8
  %53 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %54 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i64 %52, i64* %57, align 8
  %58 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %59 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @htonl(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %64 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 8
  %68 = load i64, i64* @FW_FLOWC_MNEM_PORT, align 8
  %69 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %70 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 2
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i64 %68, i64* %73, align 8
  %74 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %75 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @htonl(i32 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %80 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %78, i32* %83, align 8
  %84 = load i64, i64* @FW_FLOWC_MNEM_IQID, align 8
  %85 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %86 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 3
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i64 %84, i64* %89, align 8
  %90 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %91 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @htonl(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %96 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 3
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 %94, i32* %99, align 8
  %100 = load i64, i64* @FW_FLOWC_MNEM_SNDNXT, align 8
  %101 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %102 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 4
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  store i64 %100, i64* %105, align 8
  %106 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %107 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i8* @htonl(i32 %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %112 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 4
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store i32 %110, i32* %115, align 8
  %116 = load i64, i64* @FW_FLOWC_MNEM_RCVNXT, align 8
  %117 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %118 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %117, i32 0, i32 0
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 5
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  store i64 %116, i64* %121, align 8
  %122 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %123 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @htonl(i32 %124)
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %128 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %127, i32 0, i32 0
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i64 5
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  store i32 %126, i32* %131, align 8
  %132 = load i64, i64* @FW_FLOWC_MNEM_SNDBUF, align 8
  %133 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %134 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %133, i32 0, i32 0
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i64 6
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  store i64 %132, i64* %137, align 8
  %138 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %139 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = call i8* @htonl(i32 %140)
  %142 = ptrtoint i8* %141 to i32
  %143 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %144 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %143, i32 0, i32 0
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i64 6
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  store i32 %142, i32* %147, align 8
  %148 = load i64, i64* @FW_FLOWC_MNEM_MSS, align 8
  %149 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %150 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %149, i32 0, i32 0
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i64 7
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  store i64 %148, i64* %153, align 8
  %154 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %155 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = call i8* @htonl(i32 %156)
  %158 = ptrtoint i8* %157 to i32
  %159 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %160 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %159, i32 0, i32 0
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i64 7
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  store i32 %158, i32* %163, align 8
  %164 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %165 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %164, i32 0, i32 0
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i64 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  store i64 0, i64* %168, align 8
  %169 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %170 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %169, i32 0, i32 0
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i64 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  store i32 0, i32* %173, align 8
  %174 = load i64, i64* @FW_FLOWC_MNEM_TXDATAPLEN_MAX, align 8
  %175 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %176 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %175, i32 0, i32 0
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i64 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  store i64 %174, i64* %179, align 8
  %180 = load %struct.fw_flowc_wr*, %struct.fw_flowc_wr** %4, align 8
  %181 = getelementptr inbounds %struct.fw_flowc_wr, %struct.fw_flowc_wr* %180, i32 0, i32 0
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i64 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  store i32 16384, i32* %184, align 8
  %185 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %186 = load i32, i32* @CPL_PRIORITY_DATA, align 4
  %187 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %188 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %187, i32 0, i32 6
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @set_wr_txq(%struct.sk_buff* %185, i32 %186, i64 %189)
  %191 = load i32, i32* @CXGBI_DBG_TOE, align 4
  %192 = shl i32 1, %191
  %193 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %194 = shl i32 1, %193
  %195 = or i32 %192, %194
  %196 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %197 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %198 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %197, i32 0, i32 8
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %201 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %204 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %207 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %210 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %213 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %216 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @log_debug(i32 %195, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %196, i32 %199, i32 0, i32 %202, i32 %205, i32 %208, i32 %211, i32 %214, i32 %217)
  %219 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %220 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %219, i32 0, i32 7
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %225 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %224, i32 0, i32 6
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %230 = call i32 @cxgb4_ofld_send(i32 %228, %struct.sk_buff* %229)
  %231 = load i32, i32* %6, align 4
  ret i32 %231
}

declare dso_local i32 @tx_flowc_wr_credits(i32*, i32*) #1

declare dso_local %struct.sk_buff* @alloc_wr(i32, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_WR_OP_V(i32) #1

declare dso_local i32 @FW_FLOWC_WR_NPARAMS_V(i32) #1

declare dso_local i32 @FW_WR_LEN16_V(i32) #1

declare dso_local i32 @FW_WR_FLOWID_V(i32) #1

declare dso_local i32 @set_wr_txq(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cxgb4_ofld_send(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
