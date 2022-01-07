; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_update_local_ip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_update_local_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i32, i8*, %struct.TYPE_5__, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.addr_ctrl_blk = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ACB_SUPPORTED = common dso_local global i64 0, align 8
@ISCSI_ROUTER_STATE_UNKNOWN = common dso_local global i8* null, align 8
@ISCSI_ROUTER_STATE_MANUAL = common dso_local global i8* null, align 8
@ISCSI_ROUTER_STATE_ADVERTISED = common dso_local global i8* null, align 8
@ISCSI_ROUTER_STATE_STALE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.addr_ctrl_blk*)* @qla4xxx_update_local_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_update_local_ip(%struct.scsi_qla_host* %0, %struct.addr_ctrl_blk* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.addr_ctrl_blk*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.addr_ctrl_blk* %1, %struct.addr_ctrl_blk** %4, align 8
  %5 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %6 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %5, i32 0, i32 48
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @le16_to_cpu(i32 %7)
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 8
  %12 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %13 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %12, i32 0, i32 47
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le16_to_cpu(i32 %14)
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %20 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %19, i32 0, i32 46
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @qla4xxx_set_ipaddr_state(i32 %21)
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 48
  store i8* %22, i8** %25, align 8
  %26 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %27 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %26, i32 0, i32 45
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %31 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 8
  %33 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %34 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %33, i32 0, i32 44
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le16_to_cpu(i32 %35)
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 4
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %41 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ACB_SUPPORTED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %2
  %46 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %47 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %46, i32 0, i32 43
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  %50 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %51 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  store i32 %49, i32* %52, align 8
  %53 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %54 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %53, i32 0, i32 42
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  %57 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %58 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 5
  store i32 %56, i32* %59, align 4
  %60 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %61 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %60, i32 0, i32 41
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le16_to_cpu(i32 %62)
  %64 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %65 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 6
  store i32 %63, i32* %66, align 8
  br label %67

67:                                               ; preds = %45, %2
  %68 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %69 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 7
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %73 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %72, i32 0, i32 40
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @min(i32 8, i32 4)
  %76 = call i32 @memcpy(i32* %71, i32 %74, i32 %75)
  %77 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %78 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 8
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %82 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %81, i32 0, i32 39
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @min(i32 8, i32 4)
  %85 = call i32 @memcpy(i32* %80, i32 %83, i32 %84)
  %86 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %87 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 9
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %91 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %90, i32 0, i32 38
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @min(i32 8, i32 4)
  %94 = call i32 @memcpy(i32* %89, i32 %92, i32 %93)
  %95 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %96 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %95, i32 0, i32 37
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @be16_to_cpu(i32 %97)
  %99 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %100 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 47
  store i8* %98, i8** %101, align 8
  %102 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %103 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %102, i32 0, i32 36
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %106 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 46
  store i32 %104, i32* %107, align 4
  %108 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %109 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %108, i32 0, i32 35
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %112 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 45
  store i32 %110, i32* %113, align 8
  %114 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %115 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %114, i32 0, i32 34
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %118 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 44
  store i32 %116, i32* %119, align 4
  %120 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %121 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %120, i32 0, i32 33
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %124 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 43
  store i32 %122, i32* %125, align 8
  %126 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %127 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %126, i32 0, i32 32
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %130 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 42
  store i32 %128, i32* %131, align 4
  %132 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %133 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 10
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %137 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %136, i32 0, i32 31
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @min(i32 8, i32 4)
  %140 = call i32 @memcpy(i32* %135, i32 %138, i32 %139)
  %141 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %142 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %141, i32 0, i32 30
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %145 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 41
  store i32 %143, i32* %146, align 8
  %147 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %148 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 11
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %152 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %151, i32 0, i32 29
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @min(i32 8, i32 4)
  %155 = call i32 @memcpy(i32* %150, i32 %153, i32 %154)
  %156 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %157 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %156, i32 0, i32 28
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %160 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 40
  store i32 %158, i32* %161, align 4
  %162 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %163 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %162, i32 0, i32 27
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @le16_to_cpu(i32 %164)
  %166 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %167 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 12
  store i32 %165, i32* %168, align 8
  %169 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %170 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %169, i32 0, i32 26
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %173 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 39
  store i32 %171, i32* %174, align 8
  %175 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %176 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %175, i32 0, i32 25
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @le16_to_cpu(i32 %177)
  %179 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %180 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 13
  store i32 %178, i32* %181, align 4
  %182 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %183 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %182, i32 0, i32 24
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @le16_to_cpu(i32 %184)
  %186 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %187 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 14
  store i32 %185, i32* %188, align 8
  %189 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %190 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %189, i32 0, i32 23
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @le16_to_cpu(i32 %191)
  %193 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %194 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 15
  store i32 %192, i32* %195, align 4
  %196 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %197 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %196, i32 0, i32 22
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @le16_to_cpu(i32 %198)
  %200 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %201 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 16
  store i32 %199, i32* %202, align 8
  %203 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %204 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %203, i32 0, i32 21
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @le16_to_cpu(i32 %205)
  %207 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %208 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 17
  store i32 %206, i32* %209, align 4
  %210 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %211 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 18
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %215 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %214, i32 0, i32 20
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @min(i32 8, i32 4)
  %218 = call i32 @memcpy(i32* %213, i32 %216, i32 %217)
  %219 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %220 = call i64 @is_ipv6_enabled(%struct.scsi_qla_host* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %403

222:                                              ; preds = %67
  %223 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %224 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %223, i32 0, i32 19
  %225 = load i32, i32* %224, align 4
  %226 = call i8* @qla4xxx_set_ipaddr_state(i32 %225)
  %227 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %228 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 38
  store i8* %226, i8** %229, align 8
  %230 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %231 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %230, i32 0, i32 18
  %232 = load i32, i32* %231, align 4
  %233 = call i8* @qla4xxx_set_ipaddr_state(i32 %232)
  %234 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %235 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 37
  store i8* %233, i8** %236, align 8
  %237 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %238 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %237, i32 0, i32 17
  %239 = load i32, i32* %238, align 4
  %240 = call i8* @qla4xxx_set_ipaddr_state(i32 %239)
  %241 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %242 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 36
  store i8* %240, i8** %243, align 8
  %244 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %245 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %244, i32 0, i32 16
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @le16_to_cpu(i32 %246)
  switch i32 %247, label %268 [
    i32 128, label %248
    i32 130, label %253
    i32 131, label %258
    i32 129, label %263
  ]

248:                                              ; preds = %222
  %249 = load i8*, i8** @ISCSI_ROUTER_STATE_UNKNOWN, align 8
  %250 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %251 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 35
  store i8* %249, i8** %252, align 8
  br label %273

253:                                              ; preds = %222
  %254 = load i8*, i8** @ISCSI_ROUTER_STATE_MANUAL, align 8
  %255 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %256 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 35
  store i8* %254, i8** %257, align 8
  br label %273

258:                                              ; preds = %222
  %259 = load i8*, i8** @ISCSI_ROUTER_STATE_ADVERTISED, align 8
  %260 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %261 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 35
  store i8* %259, i8** %262, align 8
  br label %273

263:                                              ; preds = %222
  %264 = load i8*, i8** @ISCSI_ROUTER_STATE_STALE, align 8
  %265 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %266 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 35
  store i8* %264, i8** %267, align 8
  br label %273

268:                                              ; preds = %222
  %269 = load i8*, i8** @ISCSI_ROUTER_STATE_UNKNOWN, align 8
  %270 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %271 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 35
  store i8* %269, i8** %272, align 8
  br label %273

273:                                              ; preds = %268, %263, %258, %253, %248
  %274 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %275 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 34
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 0
  store i32 254, i32* %280, align 4
  %281 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %282 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 34
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 1
  store i32 128, i32* %287, align 4
  %288 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %289 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 34
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 8
  %295 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %296 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %295, i32 0, i32 15
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @min(i32 4, i32 4)
  %299 = call i32 @memcpy(i32* %294, i32 %297, i32 %298)
  %300 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %301 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 19
  %303 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %304 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %303, i32 0, i32 14
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @min(i32 4, i32 4)
  %307 = call i32 @memcpy(i32* %302, i32 %305, i32 %306)
  %308 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %309 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 20
  %311 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %312 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %311, i32 0, i32 13
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @min(i32 4, i32 4)
  %315 = call i32 @memcpy(i32* %310, i32 %313, i32 %314)
  %316 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %317 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 21
  %319 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %320 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %319, i32 0, i32 12
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @min(i32 4, i32 4)
  %323 = call i32 @memcpy(i32* %318, i32 %321, i32 %322)
  %324 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %325 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %324, i32 0, i32 11
  %326 = load i32, i32* %325, align 4
  %327 = call i8* @be16_to_cpu(i32 %326)
  %328 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %329 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 33
  store i8* %327, i8** %330, align 8
  %331 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %332 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %331, i32 0, i32 10
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @le16_to_cpu(i32 %333)
  %335 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %336 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 22
  store i32 %334, i32* %337, align 4
  %338 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %339 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %338, i32 0, i32 9
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %342 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 32
  store i32 %340, i32* %343, align 8
  %344 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %345 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %344, i32 0, i32 8
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @le16_to_cpu(i32 %346)
  %348 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %349 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 23
  store i32 %347, i32* %350, align 8
  %351 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %352 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %351, i32 0, i32 7
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %355 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 31
  store i32 %353, i32* %356, align 4
  %357 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %358 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %357, i32 0, i32 6
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %361 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 30
  store i32 %359, i32* %362, align 8
  %363 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %364 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %363, i32 0, i32 5
  %365 = load i32, i32* %364, align 4
  %366 = call i8* @le32_to_cpu(i32 %365)
  %367 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %368 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 29
  store i8* %366, i8** %369, align 8
  %370 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %371 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %370, i32 0, i32 4
  %372 = load i32, i32* %371, align 4
  %373 = call i8* @le32_to_cpu(i32 %372)
  %374 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %375 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 28
  store i8* %373, i8** %376, align 8
  %377 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %378 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 4
  %380 = call i8* @le32_to_cpu(i32 %379)
  %381 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %382 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 27
  store i8* %380, i8** %383, align 8
  %384 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %385 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %388 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 26
  store i32 %386, i32* %389, align 8
  %390 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %391 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = call i8* @le32_to_cpu(i32 %392)
  %394 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %395 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 25
  store i8* %393, i8** %396, align 8
  %397 = load %struct.addr_ctrl_blk*, %struct.addr_ctrl_blk** %4, align 8
  %398 = getelementptr inbounds %struct.addr_ctrl_blk, %struct.addr_ctrl_blk* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %401 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %401, i32 0, i32 24
  store i32 %399, i32* %402, align 4
  br label %403

403:                                              ; preds = %273, %67
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @qla4xxx_set_ipaddr_state(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i64 @is_ipv6_enabled(%struct.scsi_qla_host*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
